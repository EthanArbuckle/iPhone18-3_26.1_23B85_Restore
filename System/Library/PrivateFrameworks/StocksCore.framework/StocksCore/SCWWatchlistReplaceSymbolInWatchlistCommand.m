@interface SCWWatchlistReplaceSymbolInWatchlistCommand
- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithCoder:(id)a3;
- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithOldSymbol:(id)a3 replacementSymbol:(id)a4 watchlistIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistReplaceSymbolInWatchlistCommand

- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithOldSymbol:(id)a3 replacementSymbol:(id)a4 watchlistIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SCWWatchlistReplaceSymbolInWatchlistCommand;
  v11 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    oldSymbol = v11->_oldSymbol;
    v11->_oldSymbol = v12;

    v14 = [v9 copy];
    replacementSymbol = v11->_replacementSymbol;
    v11->_replacementSymbol = v14;

    v16 = [v10 copy];
    watchlistIdentifier = v11->_watchlistIdentifier;
    v11->_watchlistIdentifier = v16;
  }

  return v11;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SCWWatchlistReplaceSymbolInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self watchlistIdentifier];
  [v4 createOrUpdateRecordWithName:v6 recordType:@"Watchlist" modifyBlock:v5];
}

void __63__SCWWatchlistReplaceSymbolInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v12 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) oldSymbol];
  v8 = [v12 indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(a1 + 32) replacementSymbol];
    [v12 replaceObjectAtIndex:v8 withObject:v9];
  }

  v10 = [v12 array];
  v11 = [v4 encryptedValues];

  [v11 setObject:v10 forKeyedSubscript:@"symbols"];
}

- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oldSymbol"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replacementSymbol"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    self = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self initWithOldSymbol:v5 replacementSymbol:v6 watchlistIdentifier:v7];
    v9 = self;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self oldSymbol];
  [v4 encodeObject:v5 forKey:@"oldSymbol"];

  v6 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self replacementSymbol];
  [v4 encodeObject:v6 forKey:@"replacementSymbol"];

  v7 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self watchlistIdentifier];
  [v4 encodeObject:v7 forKey:@"watchlistIdentifier"];
}

@end