@interface NSManagedObjectContext(IMPlayerItem)
- (id)episodeForPlayerItem:()IMPlayerItem;
@end

@implementation NSManagedObjectContext(IMPlayerItem)

- (id)episodeForPlayerItem:()IMPlayerItem
{
  v4 = a3;
  episodeObjectID = [v4 episodeObjectID];

  if (!episodeObjectID || ([v4 episodeObjectID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "existingEpisodeWithID:", v6), episodeUuid = objc_claimAutoreleasedReturnValue(), v6, !episodeUuid))
  {
    episodeUuid = [v4 episodeUuid];

    if (episodeUuid)
    {
      episodeUuid2 = [v4 episodeUuid];
      episodeUuid = [self episodeForUuid:episodeUuid2];

      objectID = [episodeUuid objectID];
      [v4 setEpisodeObjectID:objectID];
    }
  }

  return episodeUuid;
}

@end