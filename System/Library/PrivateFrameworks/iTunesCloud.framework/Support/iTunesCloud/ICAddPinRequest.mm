@interface ICAddPinRequest
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
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
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:self->_pinAction];
    [v7 setDelegate:v8];
    [v7 parse];
    addedItems = [(ICPinOperationResponseParserDelegate *)v8 addedItems];
    v10 = [addedItems copy];
    [v4 setAddedItems:v10];

    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

@end