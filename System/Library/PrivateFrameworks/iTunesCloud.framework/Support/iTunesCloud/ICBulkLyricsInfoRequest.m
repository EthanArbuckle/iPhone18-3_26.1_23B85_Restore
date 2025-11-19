@interface ICBulkLyricsInfoRequest
- (id)_bodyDataForItemIDs:(id)a3 useLongIDs:(BOOL)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICBulkLyricsInfoRequest

- (id)_bodyDataForItemIDs:(id)a3 useLongIDs:(BOOL)a4
{
  v7 = a3;
  v4 = v7;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICBulkLyricsInfoResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:v4];

  [v3 setLyricsInfoDictionaries:v5];

  return v3;
}

@end