@interface SCWatchlistAddSymbolsCommand
- (SCWatchlistAddSymbolsCommand)initWithCoder:(id)a3;
- (SCWatchlistAddSymbolsCommand)initWithSymbols:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWatchlistAddSymbolsCommand

- (SCWatchlistAddSymbolsCommand)initWithSymbols:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWatchlistAddSymbolsCommand;
  v5 = [(SCWatchlistAddSymbolsCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    symbols = v5->_symbols;
    v5->_symbols = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SCWatchlistAddSymbolsCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  [v3 createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __48__SCWatchlistAddSymbolsCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) symbols];
  [v10 addObjectsFromArray:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"symbols"];
}

- (SCWatchlistAddSymbolsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"symbols"];

  if (v8)
  {
    self = [(SCWatchlistAddSymbolsCommand *)self initWithSymbols:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlistAddSymbolsCommand *)self symbols];
  [v4 encodeObject:v5 forKey:@"symbols"];
}

@end