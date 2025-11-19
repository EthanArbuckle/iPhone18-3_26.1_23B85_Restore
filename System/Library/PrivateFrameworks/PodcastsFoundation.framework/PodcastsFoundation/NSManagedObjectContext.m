@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

uint64_t __67__NSManagedObjectContext_MTAdditions__performBlockAndWaitWithSave___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 saveInCurrentBlock];
}

void __73__NSManagedObjectContext_MTAdditions__titlesOfObjectsInEntity_predicate___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = [v4 valueForKey:@"title"];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    [v5 logAndThrow:1];
  }
}

void __55__NSManagedObjectContext_MTChannel__channelForStoreId___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MTChannel predicateForChannelWithStoreId:a1[6]];
  v7 = [v2 objectsInEntity:@"MTChannel" predicate:v3 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  v4 = [v7 firstObject];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __58__NSManagedObjectContext_MTPodcast__podcastForPodcastPID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MTPodcast predicateForPodcastWithPodcastPID:a1[6]];
  v7 = [v2 objectsInEntity:@"MTPodcast" predicate:v3 sortDescriptors:0];

  v4 = [v7 firstObject];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__NSManagedObjectContext_MTPodcast__podcastForFeedUrl___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MTPodcast predicateForPodcastWithFeedUrl:a1[5]];
  v7 = [v2 objectsInEntity:@"MTPodcast" predicate:v3 sortDescriptors:0];

  v4 = [v7 firstObject];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__NSManagedObjectContext_MTPodcast__podcastForStoreId___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MTPodcast predicateForPodcastStoreId:a1[6]];
  v7 = [v2 objectsInEntity:@"MTPodcast" predicate:v3 sortDescriptors:0 returnsObjectsAsFaults:0 limit:1];

  v4 = [v7 firstObject];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end