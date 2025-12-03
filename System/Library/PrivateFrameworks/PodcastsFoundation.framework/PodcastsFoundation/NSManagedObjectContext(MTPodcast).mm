@interface NSManagedObjectContext(MTPodcast)
- (id)podcastForFeedUrl:()MTPodcast;
- (id)podcastForPodcastPID:()MTPodcast;
- (id)podcastForStoreId:()MTPodcast;
- (uint64_t)_nextSortOrderWithRequest:()MTPodcast;
- (uint64_t)countOfPodcasts;
- (uint64_t)countOfSubscribedAndNotHiddenPodcasts;
- (uint64_t)nextSortOrderForPodcasts;
@end

@implementation NSManagedObjectContext(MTPodcast)

- (id)podcastForPodcastPID:()MTPodcast
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__NSManagedObjectContext_MTPodcast__podcastForPodcastPID___block_invoke;
  v5[3] = &unk_1E856A0C8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [self performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)podcastForFeedUrl:()MTPodcast
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSManagedObjectContext_MTPodcast__podcastForFeedUrl___block_invoke;
  v8[3] = &unk_1E856A118;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)podcastForStoreId:()MTPodcast
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NSManagedObjectContext_MTPodcast__podcastForStoreId___block_invoke;
  v5[3] = &unk_1E856A0C8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [self performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (uint64_t)countOfPodcasts
{
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTPodcast"];
  v3 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v2 setPredicate:v3];

  v4 = [self countForFetchRequest:v2 error:0];
  return v4;
}

- (uint64_t)countOfSubscribedAndNotHiddenPodcasts
{
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTPodcast"];
  v3 = +[MTPodcast predicateForSubscribedAndNotHidden];
  [v2 setPredicate:v3];

  v4 = [self countForFetchRequest:v2 error:0];
  return v4;
}

- (uint64_t)nextSortOrderForPodcasts
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTPodcast"];
  v3 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortOrder" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:1];
  v6 = [self _nextSortOrderWithRequest:v2];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)_nextSortOrderWithRequest:()MTPodcast
{
  v9 = 0;
  v3 = [self executeFetchRequest:a3 error:&v9];
  v4 = v3;
  if (v3 && [v3 count])
  {
    firstObject = [v4 firstObject];
    v6 = [firstObject valueForKey:@"sortOrder"];
    v7 = [v6 unsignedIntegerValue] + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end