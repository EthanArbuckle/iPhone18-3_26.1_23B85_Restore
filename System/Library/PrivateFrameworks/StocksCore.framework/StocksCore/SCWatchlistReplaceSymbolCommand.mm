@interface SCWatchlistReplaceSymbolCommand
- (SCWatchlistReplaceSymbolCommand)initWithCoder:(id)a3;
- (SCWatchlistReplaceSymbolCommand)initWithOldSymbol:(id)a3 replacementSymbol:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWatchlistReplaceSymbolCommand

- (SCWatchlistReplaceSymbolCommand)initWithOldSymbol:(id)a3 replacementSymbol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCWatchlistReplaceSymbolCommand;
  v8 = [(SCWatchlistReplaceSymbolCommand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    oldSymbol = v8->_oldSymbol;
    v8->_oldSymbol = v9;

    v11 = [v7 copy];
    replacementSymbol = v8->_replacementSymbol;
    v8->_replacementSymbol = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SCWatchlistReplaceSymbolCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v3 = a3;
  v4 = _Block_copy(aBlock);
  [v3 createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
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

- (SCWatchlistReplaceSymbolCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oldSymbol"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replacementSymbol"];

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
    v8 = 0;
  }

  else
  {
    self = [(SCWatchlistReplaceSymbolCommand *)self initWithOldSymbol:v5 replacementSymbol:v6];
    v8 = self;
  }

  v9 = v8;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlistReplaceSymbolCommand *)self oldSymbol];
  [v4 encodeObject:v5 forKey:@"oldSymbol"];

  v6 = [(SCWatchlistReplaceSymbolCommand *)self replacementSymbol];
  [v4 encodeObject:v6 forKey:@"replacementSymbol"];
}

@end