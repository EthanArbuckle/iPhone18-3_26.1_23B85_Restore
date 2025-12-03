@interface ICCreateGeniusContainerRequest
- (id)_bodyDataForPlaylistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCreateGeniusContainerRequest

- (id)_bodyDataForPlaylistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs
{
  nameCopy = name;
  dsCopy = ds;
  v14 = nameCopy;
  iDsCopy = iDs;
  v16 = dsCopy;
  v9 = dsCopy;
  v10 = iDsCopy;
  v11 = nameCopy;
  v12 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v12;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCreateGeniusContainerResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  lastObject = [v5 lastObject];
  v7 = [lastObject objectForKey:@"dmap.itemid"];
  [v3 setContainerID:{objc_msgSend(v7, "unsignedIntValue")}];

  return v3;
}

@end