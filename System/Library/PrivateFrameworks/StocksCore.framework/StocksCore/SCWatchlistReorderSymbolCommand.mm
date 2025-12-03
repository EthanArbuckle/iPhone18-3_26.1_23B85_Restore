@interface SCWatchlistReorderSymbolCommand
- (SCWatchlistReorderSymbolCommand)initWithCoder:(id)coder;
- (SCWatchlistReorderSymbolCommand)initWithSymbol:(id)symbol precedingSymbol:(id)precedingSymbol;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistReorderSymbolCommand

- (SCWatchlistReorderSymbolCommand)initWithSymbol:(id)symbol precedingSymbol:(id)precedingSymbol
{
  symbolCopy = symbol;
  precedingSymbolCopy = precedingSymbol;
  v14.receiver = self;
  v14.super_class = SCWatchlistReorderSymbolCommand;
  v8 = [(SCWatchlistReorderSymbolCommand *)&v14 init];
  if (v8)
  {
    v9 = [symbolCopy copy];
    symbol = v8->_symbol;
    v8->_symbol = v9;

    v11 = [precedingSymbolCopy copy];
    precedingSymbol = v8->_precedingSymbol;
    v8->_precedingSymbol = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SCWatchlistReorderSymbolCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __51__SCWatchlistReorderSymbolCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFA0];
  v23 = v3;
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

        v18 = [*(a1 + 32) symbol];
        [v7 removeObject:v18];

        v19 = [*(a1 + 32) symbol];
        if (v17)
        {
          v20 = [*(a1 + 32) precedingSymbol];
          [v7 insertObject:v19 atIndex:{objc_msgSend(v7, "indexOfObject:", v20) + 1}];
        }

        else
        {
          [v7 insertObject:v19 atIndex:0];
        }

        v21 = [v7 array];
        v22 = [v23 encryptedValues];
        [v22 setObject:v21 forKeyedSubscript:@"symbols"];
      }
    }
  }
}

- (SCWatchlistReorderSymbolCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precedingSymbol"];

  if (v5)
  {
    self = [(SCWatchlistReorderSymbolCommand *)self initWithSymbol:v5 precedingSymbol:v6];
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
  symbol = [(SCWatchlistReorderSymbolCommand *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];

  precedingSymbol = [(SCWatchlistReorderSymbolCommand *)self precedingSymbol];
  [coderCopy encodeObject:precedingSymbol forKey:@"precedingSymbol"];
}

@end