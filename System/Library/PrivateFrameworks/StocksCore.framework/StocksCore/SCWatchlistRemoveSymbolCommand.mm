@interface SCWatchlistRemoveSymbolCommand
- (SCWatchlistRemoveSymbolCommand)initWithCoder:(id)coder;
- (SCWatchlistRemoveSymbolCommand)initWithSymbol:(id)symbol;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistRemoveSymbolCommand

- (SCWatchlistRemoveSymbolCommand)initWithSymbol:(id)symbol
{
  symbolCopy = symbol;
  v9.receiver = self;
  v9.super_class = SCWatchlistRemoveSymbolCommand;
  v5 = [(SCWatchlistRemoveSymbolCommand *)&v9 init];
  if (v5)
  {
    v6 = [symbolCopy copy];
    symbol = v5->_symbol;
    v5->_symbol = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SCWatchlistRemoveSymbolCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __50__SCWatchlistRemoveSymbolCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
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

- (SCWatchlistRemoveSymbolCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];

  if (v5)
  {
    self = [(SCWatchlistRemoveSymbolCommand *)self initWithSymbol:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = selfCopy;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbol = [(SCWatchlistRemoveSymbolCommand *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];
}

@end