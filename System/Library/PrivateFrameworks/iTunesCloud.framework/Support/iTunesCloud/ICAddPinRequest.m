@interface ICAddPinRequest
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)a3;
- (id)canonicalResponseForResponse:(id)a3;
- (id)description;
@end

@implementation ICAddPinRequest

- (id)description
{
  v3 = objc_opt_class();
  entityType = self->_entityType;
  v5 = NSStringFromICLibraryPinEntityType();
  pinAction = self->_pinAction;
  v7 = NSStringFromICLibraryPinAction();
  cloudID = self->_cloudID;
  v9 = [NSString stringWithFormat:@"<%@: %p entityType=%@, defaultAction=%@, cloudID=%lld, cloudLibraryID=%@>", v3, self, v5, v7, cloudID, self->_cloudLibraryID];

  return v9;
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
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:self->_pinAction];
    [v7 setDelegate:v8];
    [v7 parse];
    v9 = [(ICPinOperationResponseParserDelegate *)v8 addedItems];
    v10 = [v9 copy];
    [v4 setAddedItems:v10];

    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

@end