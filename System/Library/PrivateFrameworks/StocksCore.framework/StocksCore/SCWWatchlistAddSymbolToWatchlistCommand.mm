@interface SCWWatchlistAddSymbolToWatchlistCommand
- (SCWWatchlistAddSymbolToWatchlistCommand)initWithCoder:(id)a3;
- (SCWWatchlistAddSymbolToWatchlistCommand)initWithSymbol:(id)a3 watchlistIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistAddSymbolToWatchlistCommand

- (SCWWatchlistAddSymbolToWatchlistCommand)initWithSymbol:(id)a3 watchlistIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCWWatchlistAddSymbolToWatchlistCommand;
  v8 = [(SCWWatchlistAddSymbolToWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    symbol = v8->_symbol;
    v8->_symbol = v9;

    v11 = [v7 copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__SCWWatchlistAddSymbolToWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(SCWWatchlistAddSymbolToWatchlistCommand *)self watchlistIdentifier];
  [v4 createOrUpdateRecordWithName:v6 recordType:@"Watchlist" modifyBlock:v5];
}

void __59__SCWWatchlistAddSymbolToWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) symbol];
  [v10 addObject:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"symbols"];
}

- (SCWWatchlistAddSymbolToWatchlistCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistAddSymbolToWatchlistCommand *)self initWithSymbol:v5 watchlistIdentifier:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistAddSymbolToWatchlistCommand *)self symbol];
  [v4 encodeObject:v5 forKey:@"symbol"];

  v6 = [(SCWWatchlistAddSymbolToWatchlistCommand *)self watchlistIdentifier];
  [v4 encodeObject:v6 forKey:@"watchlistIdentifier"];
}

@end