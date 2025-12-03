@interface ICUpdateRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICUpdateRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision
{
  v3 = ICDAAPUtilitiesCreateData();

  return v3;
}

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  v4 = [(ICDResponse *)ICUpdateResponse responseWithResponse:responseCopy];
  responseData = [v4 responseData];
  if ([responseData length])
  {
    v6 = [NSInputStream inputStreamWithData:responseData];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = objc_alloc_init(UpdateResponseParserDelegate);
    [v7 setDelegate:v8];
    [v7 parse];
    [v4 setDatabaseRevision:{-[UpdateResponseParserDelegate serverRevision](v8, "serverRevision")}];
    [v4 setHasAddToPlaylistBehavior:{-[UpdateResponseParserDelegate hasAddToPlaylistBehavior](v8, "hasAddToPlaylistBehavior")}];
    [v4 setAddToPlaylistBehavior:{-[UpdateResponseParserDelegate addToPlaylistBehavior](v8, "addToPlaylistBehavior")}];
    [v4 setHasNeedsResetSync:{-[UpdateResponseParserDelegate hasNeedsResetSync](v8, "hasNeedsResetSync")}];
    [v4 setNeedsResetSync:{-[UpdateResponseParserDelegate needsResetSync](v8, "needsResetSync")}];
    [v4 setHasAddToLibraryWhenFavoritingBehavior:{-[UpdateResponseParserDelegate hasAddToLibraryWhenFavoritingBehavior](v8, "hasAddToLibraryWhenFavoritingBehavior")}];
    [v4 setAddToLibraryWhenFavoritingBehavior:{-[UpdateResponseParserDelegate addToLibraryWhenFavoritingBehavior](v8, "addToLibraryWhenFavoritingBehavior")}];
    responseHeaderFields = [responseCopy responseHeaderFields];
    v10 = [responseHeaderFields objectForKey:ICStoreHTTPHeaderKeyXDAAPClientFeaturesVersion];
    if (_NSIsNSString())
    {
      [v4 setHasClientFeaturesVersion:1];
      [v4 setClientFeaturesVersion:v10];
    }
  }

  return v4;
}

@end