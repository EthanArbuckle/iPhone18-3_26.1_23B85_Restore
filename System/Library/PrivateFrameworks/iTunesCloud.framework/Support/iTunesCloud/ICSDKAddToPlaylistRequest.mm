@interface ICSDKAddToPlaylistRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d;
@end

@implementation ICSDKAddToPlaylistRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

@end