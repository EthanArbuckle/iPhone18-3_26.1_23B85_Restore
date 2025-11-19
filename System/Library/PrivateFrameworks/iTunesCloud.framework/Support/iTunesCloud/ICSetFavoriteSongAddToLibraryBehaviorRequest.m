@interface ICSetFavoriteSongAddToLibraryBehaviorRequest
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 addToLibraryBehavior:(unsigned __int8)a4;
@end

@implementation ICSetFavoriteSongAddToLibraryBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 addToLibraryBehavior:(unsigned __int8)a4
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end