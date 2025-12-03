@interface SCWWatchlistAddSymbolToWatchlistCommand
- (SCWWatchlistAddSymbolToWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistAddSymbolToWatchlistCommand)initWithSymbol:(id)symbol watchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistAddSymbolToWatchlistCommand

- (SCWWatchlistAddSymbolToWatchlistCommand)initWithSymbol:(id)symbol watchlistIdentifier:(id)identifier
{
  symbolCopy = symbol;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SCWWatchlistAddSymbolToWatchlistCommand;
  v8 = [(SCWWatchlistAddSymbolToWatchlistCommand *)&v14 init];
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
  aBlock[2] = __59__SCWWatchlistAddSymbolToWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistAddSymbolToWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
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

- (SCWWatchlistAddSymbolToWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistAddSymbolToWatchlistCommand *)self initWithSymbol:v5 watchlistIdentifier:v6];
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
  symbol = [(SCWWatchlistAddSymbolToWatchlistCommand *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];

  watchlistIdentifier = [(SCWWatchlistAddSymbolToWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end