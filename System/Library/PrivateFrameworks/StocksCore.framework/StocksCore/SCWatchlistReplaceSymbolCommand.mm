@interface SCWatchlistReplaceSymbolCommand
- (SCWatchlistReplaceSymbolCommand)initWithCoder:(id)coder;
- (SCWatchlistReplaceSymbolCommand)initWithOldSymbol:(id)symbol replacementSymbol:(id)replacementSymbol;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistReplaceSymbolCommand

- (SCWatchlistReplaceSymbolCommand)initWithOldSymbol:(id)symbol replacementSymbol:(id)replacementSymbol
{
  symbolCopy = symbol;
  replacementSymbolCopy = replacementSymbol;
  v14.receiver = self;
  v14.super_class = SCWatchlistReplaceSymbolCommand;
  v8 = [(SCWatchlistReplaceSymbolCommand *)&v14 init];
  if (v8)
  {
    v9 = [symbolCopy copy];
    oldSymbol = v8->_oldSymbol;
    v8->_oldSymbol = v9;

    v11 = [replacementSymbolCopy copy];
    replacementSymbol = v8->_replacementSymbol;
    v8->_replacementSymbol = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SCWatchlistReplaceSymbolCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __51__SCWatchlistReplaceSymbolCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
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

- (SCWatchlistReplaceSymbolCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oldSymbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacementSymbol"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCWatchlistReplaceSymbolCommand *)self initWithOldSymbol:v5 replacementSymbol:v6];
    selfCopy = self;
  }

  v9 = selfCopy;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  oldSymbol = [(SCWatchlistReplaceSymbolCommand *)self oldSymbol];
  [coderCopy encodeObject:oldSymbol forKey:@"oldSymbol"];

  replacementSymbol = [(SCWatchlistReplaceSymbolCommand *)self replacementSymbol];
  [coderCopy encodeObject:replacementSymbol forKey:@"replacementSymbol"];
}

@end