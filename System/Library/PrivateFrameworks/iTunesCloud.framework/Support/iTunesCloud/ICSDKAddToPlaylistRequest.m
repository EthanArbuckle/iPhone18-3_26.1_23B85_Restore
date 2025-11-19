@interface ICSDKAddToPlaylistRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 opaqueID:(id)a4;
@end

@implementation ICSDKAddToPlaylistRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 opaqueID:(id)a4
{
  v7 = a4;
  v4 = v7;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

@end