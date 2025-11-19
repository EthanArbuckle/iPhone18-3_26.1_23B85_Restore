@interface ICCreateContainerRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 playlistProperties:(id)a4 trackList:(id)a5;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICCreateContainerRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 playlistProperties:(id)a4 trackList:(id)a5
{
  v10 = a4;
  v11 = a5;
  v6 = v11;
  v7 = v10;
  v8 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v8;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICCreateContainerResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
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