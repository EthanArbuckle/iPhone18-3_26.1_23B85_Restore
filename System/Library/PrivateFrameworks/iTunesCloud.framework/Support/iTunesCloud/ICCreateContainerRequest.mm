@interface ICCreateContainerRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCreateContainerRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list
{
  propertiesCopy = properties;
  listCopy = list;
  v6 = listCopy;
  v7 = propertiesCopy;
  v8 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v8;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCreateContainerResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(CreateContainerResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    [v3 setContainerID:{-[CreateContainerResponseParserDelegate containerID](v7, "containerID")}];
    [v3 setUpdateRequired:{-[CreateContainerResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

@end