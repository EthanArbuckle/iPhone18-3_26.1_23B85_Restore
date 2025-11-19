@interface ICAddToLibraryRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 adamIDs:(id)a4 sagaID:(int64_t)a5 playlistGlobalID:(id)a6 referralAlbumAdamID:(int64_t)a7 referralPlaylistGlobalID:(id)a8;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 adamIDs:(id)a4 sagaID:(int64_t)a5 playlistGlobalID:(id)a6 referralAlbumAdamID:(int64_t)a7 referralPlaylistGlobalID:(id)a8
{
  v10 = a4;
  v11 = a6;
  v12 = a8;
  [v10 count];
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v16;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICAddToLibraryResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(AddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    v8 = [(AddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [v8 copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[AddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

@end