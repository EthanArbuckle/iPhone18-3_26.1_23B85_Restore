@interface ICCollaborationBeginRequest
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d sharingMode:(unint64_t)mode;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationBeginRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d sharingMode:(unint64_t)mode
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationBeginResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationBeginResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

@end