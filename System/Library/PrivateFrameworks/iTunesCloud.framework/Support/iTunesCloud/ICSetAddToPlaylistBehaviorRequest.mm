@interface ICSetAddToPlaylistBehaviorRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 addToPlaylistBehavior:(unsigned __int8)a4;
@end

@implementation ICSetAddToPlaylistBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 addToPlaylistBehavior:(unsigned __int8)a4
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end