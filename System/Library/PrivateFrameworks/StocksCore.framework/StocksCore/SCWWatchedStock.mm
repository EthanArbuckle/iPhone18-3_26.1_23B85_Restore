@interface SCWWatchedStock
+ (id)watchedStockWithSymbol:(id)symbol name:(id)name exchange:(id)exchange;
- (BOOL)isEqual:(id)equal;
- (SCWWatchedStock)initWithName:(id)name shortName:(id)shortName compactName:(id)compactName symbol:(id)symbol exchange:(id)exchange;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCWWatchedStock

+ (id)watchedStockWithSymbol:(id)symbol name:(id)name exchange:(id)exchange
{
  exchangeCopy = exchange;
  nameCopy = name;
  symbolCopy = symbol;
  v10 = [objc_alloc(objc_opt_class()) initWithName:nameCopy shortName:0 compactName:0 symbol:symbolCopy exchange:exchangeCopy];

  return v10;
}

- (SCWWatchedStock)initWithName:(id)name shortName:(id)shortName compactName:(id)compactName symbol:(id)symbol exchange:(id)exchange
{
  nameCopy = name;
  shortNameCopy = shortName;
  compactNameCopy = compactName;
  symbolCopy = symbol;
  exchangeCopy = exchange;
  v21.receiver = self;
  v21.super_class = SCWWatchedStock;
  v17 = [(SCWWatchedStock *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v18->_shortName, shortName);
    objc_storeStrong(&v18->_compactName, compactName);
    objc_storeStrong(&v18->_symbol, symbol);
    objc_storeStrong(&v18->_exchange, exchange);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  symbol = [(SCWWatchedStock *)self symbol];
  v5 = [v3 stringWithFormat:@"<SCWWatchedStock %p, symbol=%@>", self, symbol];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    symbol = [(SCWWatchedStock *)self symbol];
    symbol2 = [v5 symbol];
    if ([symbol isEqualToString:symbol2])
    {
      exchange = [(SCWWatchedStock *)self exchange];
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
  symbol = [(SCWWatchedStock *)self symbol];
  v4 = [symbol hash];
  exchange = [(SCWWatchedStock *)self exchange];
  v6 = [exchange hash];

  return v6 ^ v4;
}

@end