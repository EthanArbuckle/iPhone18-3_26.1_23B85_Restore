@interface SCWWatchlistReorderAllSymbolsInWatchlistCommand
- (SCWWatchlistReorderAllSymbolsInWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistReorderAllSymbolsInWatchlistCommand)initWithSymbols:(id)symbols watchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistReorderAllSymbolsInWatchlistCommand

- (SCWWatchlistReorderAllSymbolsInWatchlistCommand)initWithSymbols:(id)symbols watchlistIdentifier:(id)identifier
{
  symbolsCopy = symbols;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SCWWatchlistReorderAllSymbolsInWatchlistCommand;
  v8 = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [symbolsCopy copy];
    symbols = v8->_symbols;
    v8->_symbols = v9;

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
  aBlock[2] = __67__SCWWatchlistReorderAllSymbolsInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __67__SCWWatchlistReorderAllSymbolsInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v12 = [v3 orderedSetWithArray:v6];

  v7 = MEMORY[0x1E695DFA0];
  v8 = [*(a1 + 32) symbols];
  v9 = [v7 orderedSetWithOrderedSet:v8];

  [v9 unionOrderedSet:v12];
  v10 = [v9 array];
  v11 = [v4 encryptedValues];
  [v11 setObject:v10 forKeyedSubscript:@"symbols"];

  [v4 setObject:0 forKeyedSubscript:@"sortState"];
  [v4 setObject:0 forKeyedSubscript:@"sortOrderState"];
}

- (SCWWatchlistReorderAllSymbolsInWatchlistCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"symbols"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v8)
  {
    self = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)self initWithSymbols:v8 watchlistIdentifier:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v11 = selfCopy;

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbols = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)self symbols];
  [coderCopy encodeObject:symbols forKey:@"symbols"];

  watchlistIdentifier = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end