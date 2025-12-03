@interface ICCollaborationEndRequest
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationEndRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d
{
  v3 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationEndResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationEndResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

@end