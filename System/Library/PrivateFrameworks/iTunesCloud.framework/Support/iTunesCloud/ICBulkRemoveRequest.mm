@interface ICBulkRemoveRequest
- (id)_bodyDataForSagaIDs:(id)ds itemKind:(unsigned __int8)kind;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICBulkRemoveRequest

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICRemoveFromLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(DeleteFromLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    deletedItems = [(DeleteFromLibraryResponseParserDelegate *)v7 deletedItems];
    v9 = [deletedItems copy];
    [v3 setDeletedItems:v9];

    [v3 setUpdateRequired:{-[DeleteFromLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (id)_bodyDataForSagaIDs:(id)ds itemKind:(unsigned __int8)kind
{
  dsCopy = ds;
  v4 = dsCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

@end