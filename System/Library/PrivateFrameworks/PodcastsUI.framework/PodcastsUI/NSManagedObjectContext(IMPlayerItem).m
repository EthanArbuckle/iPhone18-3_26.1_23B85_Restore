@interface NSManagedObjectContext(IMPlayerItem)
- (id)episodeForPlayerItem:()IMPlayerItem;
@end

@implementation NSManagedObjectContext(IMPlayerItem)

- (id)episodeForPlayerItem:()IMPlayerItem
{
  v4 = a3;
  v5 = [v4 episodeObjectID];

  if (!v5 || ([v4 episodeObjectID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "existingEpisodeWithID:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [v4 episodeUuid];

    if (v7)
    {
      v8 = [v4 episodeUuid];
      v7 = [a1 episodeForUuid:v8];

      v9 = [v7 objectID];
      [v4 setEpisodeObjectID:v9];
    }
  }

  return v7;
}

@end