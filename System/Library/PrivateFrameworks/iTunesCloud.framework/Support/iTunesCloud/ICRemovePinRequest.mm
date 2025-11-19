@interface ICRemovePinRequest
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)a3;
- (id)canonicalResponseForResponse:(id)a3;
- (id)description;
@end

@implementation ICRemovePinRequest

- (id)description
{
  v3 = objc_opt_class();
  entityType = self->_entityType;
  v5 = NSStringFromICLibraryPinEntityType();
  cloudID = self->_cloudID;
  v7 = [NSString stringWithFormat:@"<%@: %p entityType=%@, cloudID=%lld, cloudLibraryID=%@>", v3, self, v5, cloudID, self->_cloudLibraryID];

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

@end