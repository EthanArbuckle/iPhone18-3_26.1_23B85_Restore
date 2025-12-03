@interface SCWatchlistAddDefaultSymbolsCommand
- (SCWatchlistAddDefaultSymbolsCommand)initWithCoder:(id)coder;
- (SCWatchlistAddDefaultSymbolsCommand)initWithSymbols:(id)symbols deferUpload:(BOOL)upload;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistAddDefaultSymbolsCommand

- (SCWatchlistAddDefaultSymbolsCommand)initWithSymbols:(id)symbols deferUpload:(BOOL)upload
{
  symbolsCopy = symbols;
  v11.receiver = self;
  v11.super_class = SCWatchlistAddDefaultSymbolsCommand;
  v7 = [(SCWatchlistAddDefaultSymbolsCommand *)&v11 init];
  if (v7)
  {
    v8 = [symbolsCopy copy];
    symbols = v7->_symbols;
    v7->_symbols = v8;

    v7->_deferUpload = upload;
  }

  return v7;
}

- (void)executeWithZone:(id)zone
{
  zoneCopy = zone;
  if (([zoneCopy recordExistsWithName:@"watchlist"] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__SCWatchlistAddDefaultSymbolsCommand_executeWithZone___block_invoke;
    aBlock[3] = &unk_1E85E3320;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    [zoneCopy createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v5];
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

- (SCWatchlistAddDefaultSymbolsCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"symbols"];

  v9 = [coderCopy decodeBoolForKey:@"deferUpload"];
  if (v8)
  {
    self = [(SCWatchlistAddDefaultSymbolsCommand *)self initWithSymbols:v8 deferUpload:v9];
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
  symbols = [(SCWatchlistAddDefaultSymbolsCommand *)self symbols];
  [coderCopy encodeObject:symbols forKey:@"symbols"];

  [coderCopy encodeBool:-[SCWatchlistAddDefaultSymbolsCommand deferUpload](self forKey:{"deferUpload"), @"deferUpload"}];
}

@end