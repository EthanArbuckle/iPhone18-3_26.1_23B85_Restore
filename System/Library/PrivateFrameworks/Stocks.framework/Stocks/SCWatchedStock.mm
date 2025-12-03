@interface SCWatchedStock
+ (id)watchedStockWithSymbol:(id)symbol name:(id)name exchange:(id)exchange;
- (BOOL)isEqual:(id)equal;
- (SCWatchedStock)initWithName:(id)name shortName:(id)shortName symbol:(id)symbol exchange:(id)exchange displaySymbol:(id)displaySymbol;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCWatchedStock

+ (id)watchedStockWithSymbol:(id)symbol name:(id)name exchange:(id)exchange
{
  exchangeCopy = exchange;
  nameCopy = name;
  symbolCopy = symbol;
  v10 = [objc_alloc(objc_opt_class()) initWithName:nameCopy shortName:0 symbol:symbolCopy exchange:exchangeCopy displaySymbol:0];

  return v10;
}

- (SCWatchedStock)initWithName:(id)name shortName:(id)shortName symbol:(id)symbol exchange:(id)exchange displaySymbol:(id)displaySymbol
{
  nameCopy = name;
  shortNameCopy = shortName;
  symbolCopy = symbol;
  exchangeCopy = exchange;
  displaySymbolCopy = displaySymbol;
  v21.receiver = self;
  v21.super_class = SCWatchedStock;
  v17 = [(SCWatchedStock *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v18->_shortName, shortName);
    objc_storeStrong(&v18->_symbol, symbol);
    objc_storeStrong(&v18->_exchange, exchange);
    objc_storeStrong(&v18->_displaySymbol, displaySymbol);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  symbol = [(SCWatchedStock *)self symbol];
  v5 = [v3 stringWithFormat:@"<SCWatchedStock %p, symbol=%@>", self, symbol];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    symbol = [(SCWatchedStock *)self symbol];
    symbol2 = [v5 symbol];
    if ([symbol isEqualToString:symbol2])
    {
      exchange = [(SCWatchedStock *)self exchange];
      exchange2 = [v5 exchange];
      v10 = [exchange isEqualToString:exchange2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  symbol = [(SCWatchedStock *)self symbol];
  v4 = [symbol hash];
  exchange = [(SCWatchedStock *)self exchange];
  v6 = [exchange hash];

  return v6 ^ v4;
}

@end