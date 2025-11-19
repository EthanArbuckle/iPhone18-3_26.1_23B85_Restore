@interface SCWatchlistAddDefaultSymbolsCommand
- (SCWatchlistAddDefaultSymbolsCommand)initWithCoder:(id)a3;
- (SCWatchlistAddDefaultSymbolsCommand)initWithSymbols:(id)a3 deferUpload:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWatchlistAddDefaultSymbolsCommand

- (SCWatchlistAddDefaultSymbolsCommand)initWithSymbols:(id)a3 deferUpload:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SCWatchlistAddDefaultSymbolsCommand;
  v7 = [(SCWatchlistAddDefaultSymbolsCommand *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    symbols = v7->_symbols;
    v7->_symbols = v8;

    v7->_deferUpload = a4;
  }

  return v7;
}

- (void)executeWithZone:(id)a3
{
  v4 = a3;
  if (([v4 recordExistsWithName:@"watchlist"] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__SCWatchlistAddDefaultSymbolsCommand_executeWithZone___block_invoke;
    aBlock[3] = &unk_1E85E3320;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    [v4 createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v5];
  }
}

void __55__SCWatchlistAddDefaultSymbolsCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 symbols];
  v4 = [v3 encryptedValues];

  [v4 setObject:v5 forKeyedSubscript:@"symbols"];
}

- (SCWatchlistAddDefaultSymbolsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"symbols"];

  v9 = [v5 decodeBoolForKey:@"deferUpload"];
  if (v8)
  {
    self = [(SCWatchlistAddDefaultSymbolsCommand *)self initWithSymbols:v8 deferUpload:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(SCWatchlistAddDefaultSymbolsCommand *)self symbols];
  [v5 encodeObject:v4 forKey:@"symbols"];

  [v5 encodeBool:-[SCWatchlistAddDefaultSymbolsCommand deferUpload](self forKey:{"deferUpload"), @"deferUpload"}];
}

@end