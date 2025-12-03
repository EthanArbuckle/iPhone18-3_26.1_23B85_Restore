@interface ICSetFavoriteSongAddToLibraryBehaviorRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior;
@end

@implementation ICSetFavoriteSongAddToLibraryBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end