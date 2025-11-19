@interface ICFavoriteEntityRequest
- (ICFavoriteEntityRequest)initWithStoreID:(int64_t)a3 globalPlaylistID:(id)a4 albumCloudLibraryID:(id)a5 artistCloudLibraryID:(id)a6 entityType:(int64_t)a7 time:(id)a8 databaseID:(unsigned int)a9 databaseRevision:(unsigned int)a10;
- (id)_bodyDataWithStoreID:(int64_t)a3 globalPlaylistID:(id)a4 albumCloudLibraryID:(id)a5 artistCloudLibraryID:(id)a6 time:(id)a7 serverDatabaseRevision:(unsigned int)a8;
- (id)canonicalResponseForResponse:(id)a3;
- (id)description;
@end

@implementation ICFavoriteEntityRequest

- (id)description
{
  v3 = objc_opt_class();
  artistCloudLibraryID = self->_artistCloudLibraryID;
  return [NSString stringWithFormat:@"<%@: %p storeID=%lld, globalPlaylistID=%@, cloudAlbumID=%@, cloudArtistID=%@ timeStamp=%@>", v3, self, self->_adamID, self->_globalPlaylistID, self->_albumCloudLibraryID, artistCloudLibraryID, self->_timeStamp];
}

- (id)_bodyDataWithStoreID:(int64_t)a3 globalPlaylistID:(id)a4 albumCloudLibraryID:(id)a5 artistCloudLibraryID:(id)a6 time:(id)a7 serverDatabaseRevision:(unsigned int)a8
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23 = a7;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v23;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = ICDAAPUtilitiesCreateDataForContainer();

  return v18;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = [(ICDResponse *)ICFavoriteEntityResponse responseWithResponse:a3];
  v5 = [v4 responseData];
  if ([v5 length])
  {
    v6 = [NSInputStream inputStreamWithData:v5];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = [[FavoriteEntityResponseParserDelegate alloc] initWithEntityType:self->_entityType];
    [v7 setDelegate:v8];
    [v7 parse];
    v9 = [(FavoriteEntityResponseParserDelegate *)v8 addedItems];
    v10 = [v9 copy];
    [v4 setAddedItems:v10];

    [v4 setUpdateRequired:{-[FavoriteEntityResponseParserDelegate updateRequired](v8, "updateRequired")}];
  }

  return v4;
}

- (ICFavoriteEntityRequest)initWithStoreID:(int64_t)a3 globalPlaylistID:(id)a4 albumCloudLibraryID:(id)a5 artistCloudLibraryID:(id)a6 entityType:(int64_t)a7 time:(id)a8 databaseID:(unsigned int)a9 databaseRevision:(unsigned int)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = [NSString stringWithFormat:@"databases/%u/add-favorite", a9];
  v30.receiver = self;
  v30.super_class = ICFavoriteEntityRequest;
  v21 = [(ICDRequest *)&v30 initWithAction:v20];

  if (v21)
  {
    v21->_adamID = a3;
    v21->_entityType = a7;
    v22 = [(NSString *)v21->_globalPlaylistID copy];
    globalPlaylistID = v21->_globalPlaylistID;
    v21->_globalPlaylistID = v22;

    v24 = [v17 copy];
    albumCloudLibraryID = v21->_albumCloudLibraryID;
    v21->_albumCloudLibraryID = v24;

    v26 = [v18 copy];
    artistCloudLibraryID = v21->_artistCloudLibraryID;
    v21->_artistCloudLibraryID = v26;

    [(ICDRequest *)v21 setMethod:1];
    v28 = [(ICFavoriteEntityRequest *)v21 _bodyDataWithStoreID:a3 globalPlaylistID:v16 albumCloudLibraryID:v17 artistCloudLibraryID:v18 time:v19 serverDatabaseRevision:a10];
    [(ICDRequest *)v21 setBodyData:v28];
  }

  return v21;
}

@end