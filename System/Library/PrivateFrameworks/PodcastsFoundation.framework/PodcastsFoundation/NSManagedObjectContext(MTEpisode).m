@interface NSManagedObjectContext(MTEpisode)
- (id)episodeForStoreTrackID:()MTEpisode;
- (id)episodesForManagedObjectIDs:()MTEpisode;
- (id)episodesForStoreTrackIDs:()MTEpisode;
- (id)episodesForUuids:()MTEpisode;
- (id)existingEpisodeWithID:()MTEpisode;
@end

@implementation NSManagedObjectContext(MTEpisode)

- (id)existingEpisodeWithID:()MTEpisode
{
  if (a3)
  {
    v7 = 0;
    v3 = [a1 existingObjectWithID:a3 error:&v7];
    v4 = v7;
    v5 = v4;
    if (!v3 && v4)
    {
      [v4 logAndThrow:0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)episodesForUuids:()MTEpisode
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:?];
  v3 = [MTEpisode predicateForEpisodeUuids:v2];
  v4 = [a1 objectsInEntity:@"MTEpisode" predicate:v3 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v4;
}

- (id)episodesForManagedObjectIDs:()MTEpisode
{
  v2 = [MEMORY[0x1E695D620] predicateForObjectsWithManagedObjectIDs:?];
  v3 = [a1 objectsInEntity:@"MTEpisode" predicate:v2 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v3;
}

- (id)episodeForStoreTrackID:()MTEpisode
{
  v2 = [MTEpisode predicateForEpisodeStoreTrackId:?];
  v3 = [a1 objectInEntity:@"MTEpisode" predicate:v2];

  return v3;
}

- (id)episodesForStoreTrackIDs:()MTEpisode
{
  v2 = [MTEpisode predicateForEpisodeStoreTrackIds:?];
  v3 = [a1 objectsInEntity:@"MTEpisode" predicate:v2 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v3;
}

@end