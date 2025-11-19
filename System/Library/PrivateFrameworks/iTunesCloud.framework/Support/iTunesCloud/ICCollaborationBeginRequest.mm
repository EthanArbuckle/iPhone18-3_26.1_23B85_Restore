@interface ICCollaborationBeginRequest
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)a3 sharingMode:(unint64_t)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICCollaborationBeginRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)a3 sharingMode:(unint64_t)a4
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICCollaborationBeginResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationBeginResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

@end