@interface SCWatchlistAddSymbolCommand
- (SCWatchlistAddSymbolCommand)initWithCoder:(id)a3;
- (SCWatchlistAddSymbolCommand)initWithSymbol:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWatchlistAddSymbolCommand

- (SCWatchlistAddSymbolCommand)initWithSymbol:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWatchlistAddSymbolCommand;
  v5 = [(SCWatchlistAddSymbolCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    symbol = v5->_symbol;
    v5->_symbol = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__SCWatchlistAddSymbolCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  [v3 createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __47__SCWatchlistAddSymbolCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
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

- (SCWatchlistAddSymbolCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];

  if (v5)
  {
    self = [(SCWatchlistAddSymbolCommand *)self initWithSymbol:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlistAddSymbolCommand *)self symbol];
  [v4 encodeObject:v5 forKey:@"symbol"];
}

@end