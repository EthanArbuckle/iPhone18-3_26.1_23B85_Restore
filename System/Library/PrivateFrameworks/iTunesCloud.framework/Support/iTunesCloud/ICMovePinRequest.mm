@interface ICMovePinRequest
- (ICMovePinRequest)initWithEntityType:(int64_t)type insertAfterPositionUUID:(id)d newLocationUUID:(id)iD positionIndex:(unsigned int)index cloudID:(int64_t)cloudID cloudLibraryID:(id)libraryID databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)self0;
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
- (id)description;
@end

@implementation ICMovePinRequest

- (id)description
{
  v3 = objc_opt_class();
  entityType = self->_entityType;
  v5 = NSStringFromICLibraryPinEntityType();
  cloudID = self->_cloudID;
  v7 = [NSString stringWithFormat:@"<%@: %p entityType=%@, position=%ul, cloudID=%lld, cloudLibraryID=%@>", v3, self, v5, self->_positionIndex, cloudID, self->_cloudLibraryID];

  return v7;
}

- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision
{
  v3 = ICDAAPUtilitiesCreateDataForContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)response
{
  v4 = [(ICDResponse *)ICPinOperationResponse responseWithResponse:response];
  responseData = [v4 responseData];
  if ([responseData length])
  {
    v6 = [NSInputStream inputStreamWithData:responseData];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:1];
    [v7 setDelegate:v8];
    [v7 parse];
    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

- (ICMovePinRequest)initWithEntityType:(int64_t)type insertAfterPositionUUID:(id)d newLocationUUID:(id)iD positionIndex:(unsigned int)index cloudID:(int64_t)cloudID cloudLibraryID:(id)libraryID databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)self0
{
  dCopy = d;
  iDCopy = iD;
  libraryIDCopy = libraryID;
  databaseID = [NSString stringWithFormat:@"databases/%u/edit", databaseID];
  v29.receiver = self;
  v29.super_class = ICMovePinRequest;
  v20 = [(ICDRequest *)&v29 initWithAction:databaseID];

  if (v20)
  {
    v20->_positionIndex = index;
    v20->_cloudID = cloudID;
    v20->_entityType = type;
    v21 = [libraryIDCopy copy];
    cloudLibraryID = v20->_cloudLibraryID;
    v20->_cloudLibraryID = v21;

    v23 = [dCopy copy];
    insertAfterPositionUUID = v20->_insertAfterPositionUUID;
    v20->_insertAfterPositionUUID = v23;

    v25 = [iDCopy copy];
    newReferencePositionUUID = v20->_newReferencePositionUUID;
    v20->_newReferencePositionUUID = v25;

    [(ICDRequest *)v20 setMethod:1];
    v27 = [(ICMovePinRequest *)v20 _bodyDataWithServerDatabaseRevision:revision];
    [(ICDRequest *)v20 setBodyData:v27];
  }

  return v20;
}

@end