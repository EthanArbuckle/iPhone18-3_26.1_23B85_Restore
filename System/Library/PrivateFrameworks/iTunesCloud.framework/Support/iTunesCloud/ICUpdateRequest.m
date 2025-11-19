@interface ICUpdateRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation ICUpdateRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3
{
  v3 = ICDAAPUtilitiesCreateData();

  return v3;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = a3;
  v4 = [(ICDResponse *)ICUpdateResponse responseWithResponse:v3];
  v5 = [v4 responseData];
  if ([v5 length])
  {
    v6 = [NSInputStream inputStreamWithData:v5];
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
    v9 = [v3 responseHeaderFields];
    v10 = [v9 objectForKey:ICStoreHTTPHeaderKeyXDAAPClientFeaturesVersion];
    if (_NSIsNSString())
    {
      [v4 setHasClientFeaturesVersion:1];
      [v4 setClientFeaturesVersion:v10];
    }
  }

  return v4;
}

@end