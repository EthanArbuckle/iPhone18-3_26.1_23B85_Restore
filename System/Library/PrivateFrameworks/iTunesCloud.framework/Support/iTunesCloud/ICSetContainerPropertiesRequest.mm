@interface ICSetContainerPropertiesRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision containerID:(unsigned int)d trackList:(id)list properties:(id)properties;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICSetContainerPropertiesRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision containerID:(unsigned int)d trackList:(id)list properties:(id)properties
{
  listCopy = list;
  propertiesCopy = properties;
  v8 = listCopy;
  v9 = propertiesCopy;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICSetContainerPropertiesResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SetContainerPropertiesResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    failedItems = [(SetContainerPropertiesResponseParserDelegate *)v7 failedItems];
    v9 = [failedItems copy];
    [v3 setFailedItems:v9];

    [v3 setUpdateRequired:{-[SetContainerPropertiesResponseParserDelegate updateRequired](v7, "updateRequired")}];
    globalPlaylistID = [(SetContainerPropertiesResponseParserDelegate *)v7 globalPlaylistID];
    [v3 setGlobalPlaylistID:globalPlaylistID];

    subscribedContainerURL = [(SetContainerPropertiesResponseParserDelegate *)v7 subscribedContainerURL];
    [v3 setSubscribedContainerURL:subscribedContainerURL];
  }

  return v3;
}

@end