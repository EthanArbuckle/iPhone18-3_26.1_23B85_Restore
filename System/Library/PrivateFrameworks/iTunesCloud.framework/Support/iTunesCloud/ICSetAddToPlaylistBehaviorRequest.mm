@interface ICSetAddToPlaylistBehaviorRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior;
@end

@implementation ICSetAddToPlaylistBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end