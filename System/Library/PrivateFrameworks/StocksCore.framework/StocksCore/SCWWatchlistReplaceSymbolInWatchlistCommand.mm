@interface SCWWatchlistReplaceSymbolInWatchlistCommand
- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithOldSymbol:(id)symbol replacementSymbol:(id)replacementSymbol watchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistReplaceSymbolInWatchlistCommand

- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithOldSymbol:(id)symbol replacementSymbol:(id)replacementSymbol watchlistIdentifier:(id)identifier
{
  symbolCopy = symbol;
  replacementSymbolCopy = replacementSymbol;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = SCWWatchlistReplaceSymbolInWatchlistCommand;
  v11 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)&v19 init];
  if (v11)
  {
    v12 = [symbolCopy copy];
    oldSymbol = v11->_oldSymbol;
    v11->_oldSymbol = v12;

    v14 = [replacementSymbolCopy copy];
    replacementSymbol = v11->_replacementSymbol;
    v11->_replacementSymbol = v14;

    v16 = [identifierCopy copy];
    watchlistIdentifier = v11->_watchlistIdentifier;
    v11->_watchlistIdentifier = v16;
  }

  return v11;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SCWWatchlistReplaceSymbolInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
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

- (SCWWatchlistReplaceSymbolInWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oldSymbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacementSymbol"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self initWithOldSymbol:v5 replacementSymbol:v6 watchlistIdentifier:v7];
    selfCopy = self;
  }

  v10 = selfCopy;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  oldSymbol = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self oldSymbol];
  [coderCopy encodeObject:oldSymbol forKey:@"oldSymbol"];

  replacementSymbol = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self replacementSymbol];
  [coderCopy encodeObject:replacementSymbol forKey:@"replacementSymbol"];

  watchlistIdentifier = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end