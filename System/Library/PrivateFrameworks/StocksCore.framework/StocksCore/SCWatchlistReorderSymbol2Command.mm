@interface SCWatchlistReorderSymbol2Command
- (SCWatchlistReorderSymbol2Command)initWithCoder:(id)coder;
- (SCWatchlistReorderSymbol2Command)initWithSymbol:(id)symbol toIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWatchlistReorderSymbol2Command

- (SCWatchlistReorderSymbol2Command)initWithSymbol:(id)symbol toIndex:(unint64_t)index
{
  symbolCopy = symbol;
  v11.receiver = self;
  v11.super_class = SCWatchlistReorderSymbol2Command;
  v7 = [(SCWatchlistReorderSymbol2Command *)&v11 init];
  if (v7)
  {
    v8 = [symbolCopy copy];
    symbol = v7->_symbol;
    v7->_symbol = v8;

    v7->_toIndex = index;
  }

  return v7;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SCWatchlistReorderSymbol2Command_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlist" recordType:@"Watchlist" modifyBlock:v4];
}

void __52__SCWatchlistReorderSymbol2Command_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v14 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) symbol];
  [v14 removeObject:v7];

  v8 = [*(a1 + 32) symbol];
  v9 = [*(a1 + 32) toIndex];
  v10 = [v14 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [v14 insertObject:v8 atIndex:v11];

  v12 = [v14 array];
  v13 = [v4 encryptedValues];

  [v13 setObject:v12 forKeyedSubscript:@"symbols"];
}

- (SCWatchlistReorderSymbol2Command)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toIndex"];

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
    self = -[SCWatchlistReorderSymbol2Command initWithSymbol:toIndex:](self, "initWithSymbol:toIndex:", v5, [v6 unsignedIntegerValue]);
    selfCopy = self;
  }

  v9 = selfCopy;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbol = [(SCWatchlistReorderSymbol2Command *)self symbol];
  [coderCopy encodeObject:symbol forKey:@"symbol"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SCWatchlistReorderSymbol2Command toIndex](self, "toIndex")}];
  [coderCopy encodeObject:v6 forKey:@"toIndex"];
}

@end