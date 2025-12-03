@interface SCWWatchlistMergeHandler
- (id)commandsToMergeRecordWithServer:(id)server;
@end

@implementation SCWWatchlistMergeHandler

- (id)commandsToMergeRecordWithServer:(id)server
{
  serverCopy = server;
  array = [MEMORY[0x1E695DF70] array];
  recordType = [serverCopy recordType];
  v6 = [recordType isEqualToString:@"Watchlist"];

  if (v6)
  {
    encryptedValues = [serverCopy encryptedValues];
    v8 = [encryptedValues objectForKeyedSubscript:@"symbols"];

    encryptedValues2 = [serverCopy encryptedValues];
    v10 = [encryptedValues2 objectForKeyedSubscript:@"name"];

    recordID = [serverCopy recordID];
    recordName = [recordID recordName];

    v13 = [serverCopy objectForKeyedSubscript:@"sortState"];
    v14 = [serverCopy objectForKeyedSubscript:@"sortOrderState"];
    v15 = [serverCopy objectForKeyedSubscript:@"displayState"];
    v16 = [[SCWWatchlistAddNewWatchlistCommand alloc] initWithName:v10 identifier:recordName symbols:v8 sortState:v13 sortOrderState:v14 displayState:v15];
    [array addObject:v16];
  }

  recordID2 = [serverCopy recordID];
  recordName2 = [recordID2 recordName];
  v19 = [recordName2 isEqualToString:@"watchlistorder"];

  if (v19)
  {
    encryptedValues3 = [serverCopy encryptedValues];
    v21 = [encryptedValues3 objectForKeyedSubscript:@"watchlistIDs"];

    if ([v21 count])
    {
      v22 = [[SCWWatchlistAddToWatchlistOrderCommand alloc] initWithWatchlistIdentifiers:v21];
      [array addObject:v22];
    }
  }

  return array;
}

@end