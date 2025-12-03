@interface SCWWatchlistReorderSymbolInWatchlistCommand
- (SCWWatchlistReorderSymbolInWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistReorderSymbolInWatchlistCommand)initWithSymbol:(id)symbol precedingSymbol:(id)precedingSymbol watchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistReorderSymbolInWatchlistCommand

- (SCWWatchlistReorderSymbolInWatchlistCommand)initWithSymbol:(id)symbol precedingSymbol:(id)precedingSymbol watchlistIdentifier:(id)identifier
{
  symbolCopy = symbol;
  precedingSymbolCopy = precedingSymbol;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = SCWWatchlistReorderSymbolInWatchlistCommand;
  v11 = [(SCWWatchlistReorderSymbolInWatchlistCommand *)&v19 init];
  if (v11)
  {
    v12 = [symbolCopy copy];
    symbol = v11->_symbol;
    v11->_symbol = v12;

    v14 = [precedingSymbolCopy copy];
    precedingSymbol = v11->_precedingSymbol;
    v11->_precedingSymbol = v14;

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
  aBlock[2] = __63__SCWWatchlistReorderSymbolInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistReorderSymbolInWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __63__SCWWatchlistReorderSymbolInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFA0];
  v25 = v3;
  v5 = [v3 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v7 = [v4 orderedSetWithArray:v6];

  v8 = [*(a1 + 32) symbol];
  v9 = [*(a1 + 32) precedingSymbol];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [*(a1 + 32) symbol];
    v12 = [v7 containsObject:v11];

    if (v12)
    {
      v13 = [*(a1 + 32) precedingSymbol];
      if (!v13 || (v14 = v13, [*(a1 + 32) precedingSymbol], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v7, "containsObject:", v15), v15, v14, v16))
      {
        v17 = [*(a1 + 32) precedingSymbol];
        v18 = [v7 indexOfObject:v17];

        v19 = [*(a1 + 32) precedingSymbol];

        v20 = [*(a1 + 32) symbol];
        [v7 removeObject:v20];

        v21 = [*(a1 + 32) symbol];
        if (!v19 || v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 insertObject:v21 atIndex:0];
        }

        else
        {
          v22 = [*(a1 + 32) precedingSymbol];
          [v7 insertObject:v21 atIndex:{objc_msgSend(v7, "indexOfObject:", v22) + 1}];
        }

        v23 = [v7 array];
        v24 = [v25 encryptedValues];
        [v24 setObject:v23 forKeyedSubscript:@"symbols"];
      }
    }
  }
}

- (SCWWatchlistReorderSymbolInWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precedingStockSymbol"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistReorderSymbolInWatchlistCommand *)self initWithSymbol:v5 precedingSymbol:v6 watchlistIdentifier:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v9 = selfCopy;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbol = [(SCWWatchlistReorderSymbolInWatchlistCommand *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];

  precedingSymbol = [(SCWWatchlistReorderSymbolInWatchlistCommand *)self precedingSymbol];
  [coderCopy encodeObject:precedingSymbol forKey:@"precedingStockSymbol"];

  watchlistIdentifier = [(SCWWatchlistReorderSymbolInWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end