@interface ICCollaborationEndRequest
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICCollaborationEndRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)a3
{
  v3 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICCollaborationEndResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationEndResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

@end