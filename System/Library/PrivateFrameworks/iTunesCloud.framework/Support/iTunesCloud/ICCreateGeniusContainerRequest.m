@interface ICCreateGeniusContainerRequest
- (id)_bodyDataForPlaylistName:(id)a3 seedItemIDs:(id)a4 itemIDs:(id)a5;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICCreateGeniusContainerRequest

- (id)_bodyDataForPlaylistName:(id)a3 seedItemIDs:(id)a4 itemIDs:(id)a5
{
  v7 = a3;
  v8 = a4;
  v14 = v7;
  v15 = a5;
  v16 = v8;
  v9 = v8;
  v10 = v15;
  v11 = v7;
  v12 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v12;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(ICDResponse *)ICCreateGeniusContainerResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:v4];

  v6 = [v5 lastObject];
  v7 = [v6 objectForKey:@"dmap.itemid"];
  [v3 setContainerID:{objc_msgSend(v7, "unsignedIntValue")}];

  return v3;
}

@end