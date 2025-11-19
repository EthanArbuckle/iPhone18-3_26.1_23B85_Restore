@interface ICSetContainerPropertiesRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 containerID:(unsigned int)a4 trackList:(id)a5 properties:(id)a6;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICSetContainerPropertiesRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 containerID:(unsigned int)a4 trackList:(id)a5 properties:(id)a6
{
  v7 = a5;
  v12 = a6;
  v8 = v7;
  v9 = v12;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICSetContainerPropertiesResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SetContainerPropertiesResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    v8 = [(SetContainerPropertiesResponseParserDelegate *)v7 failedItems];
    v9 = [v8 copy];
    [v3 setFailedItems:v9];

    [v3 setUpdateRequired:{-[SetContainerPropertiesResponseParserDelegate updateRequired](v7, "updateRequired")}];
    v10 = [(SetContainerPropertiesResponseParserDelegate *)v7 globalPlaylistID];
    [v3 setGlobalPlaylistID:v10];

    v11 = [(SetContainerPropertiesResponseParserDelegate *)v7 subscribedContainerURL];
    [v3 setSubscribedContainerURL:v11];
  }

  return v3;
}

@end