@interface ICMovePinRequest
- (ICMovePinRequest)initWithEntityType:(int64_t)a3 insertAfterPositionUUID:(id)a4 newLocationUUID:(id)a5 positionIndex:(unsigned int)a6 cloudID:(int64_t)a7 cloudLibraryID:(id)a8 databaseID:(unsigned int)a9 databaseRevision:(unsigned int)a10;
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)a3;
- (id)canonicalResponseForResponse:(id)a3;
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

- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)a3
{
  v3 = ICDAAPUtilitiesCreateDataForContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = [(ICDResponse *)ICPinOperationResponse responseWithResponse:a3];
  v5 = [v4 responseData];
  if ([v5 length])
  {
    v6 = [NSInputStream inputStreamWithData:v5];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:1];
    [v7 setDelegate:v8];
    [v7 parse];
    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

- (ICMovePinRequest)initWithEntityType:(int64_t)a3 insertAfterPositionUUID:(id)a4 newLocationUUID:(id)a5 positionIndex:(unsigned int)a6 cloudID:(int64_t)a7 cloudLibraryID:(id)a8 databaseID:(unsigned int)a9 databaseRevision:(unsigned int)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [NSString stringWithFormat:@"databases/%u/edit", a9];
  v29.receiver = self;
  v29.super_class = ICMovePinRequest;
  v20 = [(ICDRequest *)&v29 initWithAction:v19];

  if (v20)
  {
    v20->_positionIndex = a6;
    v20->_cloudID = a7;
    v20->_entityType = a3;
    v21 = [v18 copy];
    cloudLibraryID = v20->_cloudLibraryID;
    v20->_cloudLibraryID = v21;

    v23 = [v16 copy];
    insertAfterPositionUUID = v20->_insertAfterPositionUUID;
    v20->_insertAfterPositionUUID = v23;

    v25 = [v17 copy];
    newReferencePositionUUID = v20->_newReferencePositionUUID;
    v20->_newReferencePositionUUID = v25;

    [(ICDRequest *)v20 setMethod:1];
    v27 = [(ICMovePinRequest *)v20 _bodyDataWithServerDatabaseRevision:a10];
    [(ICDRequest *)v20 setBodyData:v27];
  }

  return v20;
}

@end