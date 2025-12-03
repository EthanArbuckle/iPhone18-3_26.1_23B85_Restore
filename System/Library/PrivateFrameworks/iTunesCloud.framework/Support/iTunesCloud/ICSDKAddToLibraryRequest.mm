@interface ICSDKAddToLibraryRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICSDKAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICSDKAddToLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SDKAddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    addedItems = [(SDKAddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [addedItems copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[SDKAddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

@end