@interface ICAddToLibraryRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)d playlistGlobalID:(id)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)d playlistGlobalID:(id)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID
{
  dsCopy = ds;
  iDCopy = iD;
  globalIDCopy = globalID;
  [dsCopy count];
  v18 = iDCopy;
  v19 = globalIDCopy;
  v13 = globalIDCopy;
  v14 = iDCopy;
  v15 = dsCopy;
  v16 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v16;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICAddToLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(AddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    addedItems = [(AddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [addedItems copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[AddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

@end