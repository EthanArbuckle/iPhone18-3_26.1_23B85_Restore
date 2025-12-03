@interface NSManagedObjectContext(MTSyncInfo)
- (id)_allOrderedSyncInfoSinceRevision:()MTSyncInfo revisionProperty:;
- (id)syncInfosByUuids:()MTSyncInfo;
- (uint64_t)_largestRevisionForRevisionProperty:()MTSyncInfo;
- (uint64_t)currentSyncAnchorRevision;
@end

@implementation NSManagedObjectContext(MTSyncInfo)

- (uint64_t)currentSyncAnchorRevision
{
  v2 = [self _largestRevisionForRevisionProperty:@"updateRevision"];
  result = [self _largestRevisionForRevisionProperty:@"artworkUpdateRevision"];
  if (v2 > result)
  {
    return v2;
  }

  return result;
}

- (id)syncInfosByUuids:()MTSyncInfo
{
  v4 = MEMORY[0x1E696AE18];
  allObjects = [a3 allObjects];
  v6 = [v4 predicateWithFormat:@"(%K in %@)", @"uuid", allObjects];

  v7 = [self objectsInEntity:@"MTSyncInfo" predicate:v6 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v7;
}

- (id)_allOrderedSyncInfoSinceRevision:()MTSyncInfo revisionProperty:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithLongLong:a3];
  v10 = [v6 predicateWithFormat:@"%K > %@", v8, v9];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v8 ascending:1];

  v16[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v13 = [self objectsInEntity:@"MTSyncInfo" predicate:v10 sortDescriptors:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (uint64_t)_largestRevisionForRevisionProperty:()MTSyncInfo
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  truePredicate = [MEMORY[0x1E696AE18] truePredicate];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v4 ascending:0];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v8 = [self objectsInEntity:@"MTSyncInfo" predicate:truePredicate sortDescriptors:v7 returnsObjectsAsFaults:0 limit:1];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [firstObject valueForKey:v4];
    longLongValue = [v10 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return longLongValue;
}

@end