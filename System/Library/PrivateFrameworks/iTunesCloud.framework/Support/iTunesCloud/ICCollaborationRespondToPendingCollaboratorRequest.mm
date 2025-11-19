@interface ICCollaborationRespondToPendingCollaboratorRequest
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICCollaborationRespondToPendingCollaboratorRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICCollaborationRespondToPendingCollaboratorResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  if ([v4 length])
  {
    v5 = [NSInputStream inputStreamWithData:v4];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationRespondToPendingCollaboratorResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

@end