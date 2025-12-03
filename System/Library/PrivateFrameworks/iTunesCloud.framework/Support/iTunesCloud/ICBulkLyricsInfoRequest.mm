@interface ICBulkLyricsInfoRequest
- (id)_bodyDataForItemIDs:(id)ds useLongIDs:(BOOL)iDs;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICBulkLyricsInfoRequest

- (id)_bodyDataForItemIDs:(id)ds useLongIDs:(BOOL)iDs
{
  dsCopy = ds;
  v4 = dsCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICBulkLyricsInfoResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  [v3 setLyricsInfoDictionaries:v5];

  return v3;
}

@end