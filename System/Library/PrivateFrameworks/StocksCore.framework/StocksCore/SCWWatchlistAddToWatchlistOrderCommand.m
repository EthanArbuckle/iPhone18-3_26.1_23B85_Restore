@interface SCWWatchlistAddToWatchlistOrderCommand
- (SCWWatchlistAddToWatchlistOrderCommand)initWithCoder:(id)a3;
- (SCWWatchlistAddToWatchlistOrderCommand)initWithWatchlistIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistAddToWatchlistOrderCommand

- (SCWWatchlistAddToWatchlistOrderCommand)initWithWatchlistIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWWatchlistAddToWatchlistOrderCommand;
  v5 = [(SCWWatchlistAddToWatchlistOrderCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    watchlistIdentifiers = v5->_watchlistIdentifiers;
    v5->_watchlistIdentifiers = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__SCWWatchlistAddToWatchlistOrderCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  [v3 createOrUpdateRecordWithName:@"watchlistorder" recordType:@"WatchlistOrder" modifyBlock:v4];
}

void __58__SCWWatchlistAddToWatchlistOrderCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"watchlistIDs"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) watchlistIdentifiers];
  [v10 addObjectsFromArray:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"watchlistIDs"];
}

- (SCWWatchlistAddToWatchlistOrderCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"watchlistIdentifiers"];

  if (v8)
  {
    self = [(SCWWatchlistAddToWatchlistOrderCommand *)self initWithWatchlistIdentifiers:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistAddToWatchlistOrderCommand *)self watchlistIdentifiers];
  [v4 encodeObject:v5 forKey:@"watchlistIdentifiers"];
}

@end