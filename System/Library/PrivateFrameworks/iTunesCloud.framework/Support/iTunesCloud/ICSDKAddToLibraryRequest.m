@interface ICSDKAddToLibraryRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 opaqueID:(id)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICSDKAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 opaqueID:(id)a4
{
  v7 = a4;
  v4 = v7;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICSDKAddToLibraryResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SDKAddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    v8 = [(SDKAddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [v8 copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[SDKAddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

@end