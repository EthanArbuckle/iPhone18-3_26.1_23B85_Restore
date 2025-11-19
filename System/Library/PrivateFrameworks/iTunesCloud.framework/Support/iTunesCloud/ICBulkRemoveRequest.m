@interface ICBulkRemoveRequest
- (id)_bodyDataForSagaIDs:(id)a3 itemKind:(unsigned __int8)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICBulkRemoveRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICRemoveFromLibraryResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(DeleteFromLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    v8 = [(DeleteFromLibraryResponseParserDelegate *)v7 deletedItems];
    v9 = [v8 copy];
    [v3 setDeletedItems:v9];

    [v3 setUpdateRequired:{-[DeleteFromLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (id)_bodyDataForSagaIDs:(id)a3 itemKind:(unsigned __int8)a4
{
  v7 = a3;
  v4 = v7;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

@end