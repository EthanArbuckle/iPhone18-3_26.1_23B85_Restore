@interface SCWWatchlistRemoveFromWatchlistOrderCommand
- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithCoder:(id)a3;
- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithWatchlistIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistRemoveFromWatchlistOrderCommand

- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithWatchlistIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWWatchlistRemoveFromWatchlistOrderCommand;
  v5 = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    watchlistIdentifier = v5->_watchlistIdentifier;
    v5->_watchlistIdentifier = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SCWWatchlistRemoveFromWatchlistOrderCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  [v3 createOrUpdateRecordWithName:@"watchlistorder" recordType:@"WatchlistOrder" modifyBlock:v4];
}

void __63__SCWWatchlistRemoveFromWatchlistOrderCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"watchlistIDs"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) watchlistIdentifier];
  [v10 removeObject:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"watchlistIDs"];
}

- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)self initWithWatchlistIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)self watchlistIdentifier];
  [v4 encodeObject:v5 forKey:@"watchlistIdentifier"];
}

@end