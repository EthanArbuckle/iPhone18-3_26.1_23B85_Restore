@interface SCWWatchlistMergeHandler
- (id)commandsToMergeRecordWithServer:(id)a3;
@end

@implementation SCWWatchlistMergeHandler

- (id)commandsToMergeRecordWithServer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 recordType];
  v6 = [v5 isEqualToString:@"Watchlist"];

  if (v6)
  {
    v7 = [v3 encryptedValues];
    v8 = [v7 objectForKeyedSubscript:@"symbols"];

    v9 = [v3 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"name"];

    v11 = [v3 recordID];
    v12 = [v11 recordName];

    v13 = [v3 objectForKeyedSubscript:@"sortState"];
    v14 = [v3 objectForKeyedSubscript:@"sortOrderState"];
    v15 = [v3 objectForKeyedSubscript:@"displayState"];
    v16 = [[SCWWatchlistAddNewWatchlistCommand alloc] initWithName:v10 identifier:v12 symbols:v8 sortState:v13 sortOrderState:v14 displayState:v15];
    [v4 addObject:v16];
  }

  v17 = [v3 recordID];
  v18 = [v17 recordName];
  v19 = [v18 isEqualToString:@"watchlistorder"];

  if (v19)
  {
    v20 = [v3 encryptedValues];
    v21 = [v20 objectForKeyedSubscript:@"watchlistIDs"];

    if ([v21 count])
    {
      v22 = [[SCWWatchlistAddToWatchlistOrderCommand alloc] initWithWatchlistIdentifiers:v21];
      [v4 addObject:v22];
    }
  }

  return v4;
}

@end