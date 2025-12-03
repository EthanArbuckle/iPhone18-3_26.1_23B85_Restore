@interface ICFavoriteEntityRequest
- (ICFavoriteEntityRequest)initWithStoreID:(int64_t)d globalPlaylistID:(id)iD albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID entityType:(int64_t)type time:(id)time databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)self0;
- (id)_bodyDataWithStoreID:(int64_t)d globalPlaylistID:(id)iD albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID time:(id)time serverDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
- (id)description;
@end

@implementation ICFavoriteEntityRequest

- (id)description
{
  v3 = objc_opt_class();
  artistCloudLibraryID = self->_artistCloudLibraryID;
  return [NSString stringWithFormat:@"<%@: %p storeID=%lld, globalPlaylistID=%@, cloudAlbumID=%@, cloudArtistID=%@ timeStamp=%@>", v3, self, self->_adamID, self->_globalPlaylistID, self->_albumCloudLibraryID, artistCloudLibraryID, self->_timeStamp];
}

- (id)_bodyDataWithStoreID:(int64_t)d globalPlaylistID:(id)iD albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID time:(id)time serverDatabaseRevision:(unsigned int)revision
{
  iDCopy = iD;
  libraryIDCopy = libraryID;
  cloudLibraryIDCopy = cloudLibraryID;
  timeCopy = time;
  v20 = iDCopy;
  v21 = libraryIDCopy;
  v22 = cloudLibraryIDCopy;
  v14 = timeCopy;
  v15 = cloudLibraryIDCopy;
  v16 = libraryIDCopy;
  v17 = iDCopy;
  v18 = ICDAAPUtilitiesCreateDataForContainer();

  return v18;
}

- (id)canonicalResponseForResponse:(id)response
{
  v4 = [(ICDResponse *)ICFavoriteEntityResponse responseWithResponse:response];
  responseData = [v4 responseData];
  if ([responseData length])
  {
    v6 = [NSInputStream inputStreamWithData:responseData];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = [[FavoriteEntityResponseParserDelegate alloc] initWithEntityType:self->_entityType];
    [v7 setDelegate:v8];
    [v7 parse];
    addedItems = [(FavoriteEntityResponseParserDelegate *)v8 addedItems];
    v10 = [addedItems copy];
    [v4 setAddedItems:v10];

    [v4 setUpdateRequired:{-[FavoriteEntityResponseParserDelegate updateRequired](v8, "updateRequired")}];
  }

  return v4;
}

- (ICFavoriteEntityRequest)initWithStoreID:(int64_t)d globalPlaylistID:(id)iD albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID entityType:(int64_t)type time:(id)time databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)self0
{
  iDCopy = iD;
  libraryIDCopy = libraryID;
  cloudLibraryIDCopy = cloudLibraryID;
  timeCopy = time;
  databaseID = [NSString stringWithFormat:@"databases/%u/add-favorite", databaseID];
  v30.receiver = self;
  v30.super_class = ICFavoriteEntityRequest;
  v21 = [(ICDRequest *)&v30 initWithAction:databaseID];

  if (v21)
  {
    v21->_adamID = d;
    v21->_entityType = type;
    v22 = [(NSString *)v21->_globalPlaylistID copy];
    globalPlaylistID = v21->_globalPlaylistID;
    v21->_globalPlaylistID = v22;

    v24 = [libraryIDCopy copy];
    albumCloudLibraryID = v21->_albumCloudLibraryID;
    v21->_albumCloudLibraryID = v24;

    v26 = [cloudLibraryIDCopy copy];
    artistCloudLibraryID = v21->_artistCloudLibraryID;
    v21->_artistCloudLibraryID = v26;

    [(ICDRequest *)v21 setMethod:1];
    v28 = [(ICFavoriteEntityRequest *)v21 _bodyDataWithStoreID:d globalPlaylistID:iDCopy albumCloudLibraryID:libraryIDCopy artistCloudLibraryID:cloudLibraryIDCopy time:timeCopy serverDatabaseRevision:revision];
    [(ICDRequest *)v21 setBodyData:v28];
  }

  return v21;
}

@end