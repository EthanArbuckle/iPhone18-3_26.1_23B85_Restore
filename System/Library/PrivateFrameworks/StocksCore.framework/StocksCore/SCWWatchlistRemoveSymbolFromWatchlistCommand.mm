@interface SCWWatchlistRemoveSymbolFromWatchlistCommand
- (SCWWatchlistRemoveSymbolFromWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistRemoveSymbolFromWatchlistCommand)initWithSymbol:(id)symbol watchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistRemoveSymbolFromWatchlistCommand

- (SCWWatchlistRemoveSymbolFromWatchlistCommand)initWithSymbol:(id)symbol watchlistIdentifier:(id)identifier
{
  symbolCopy = symbol;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SCWWatchlistRemoveSymbolFromWatchlistCommand;
  v8 = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [symbolCopy copy];
    symbol = v8->_symbol;
    v8->_symbol = v9;

    v11 = [identifierCopy copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SCWWatchlistRemoveSymbolFromWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __64__SCWWatchlistRemoveSymbolFromWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) symbol];
  [v10 removeObject:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"symbols"];
}

- (SCWWatchlistRemoveSymbolFromWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)self initWithSymbol:v5 watchlistIdentifier:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbol = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];

  watchlistIdentifier = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end