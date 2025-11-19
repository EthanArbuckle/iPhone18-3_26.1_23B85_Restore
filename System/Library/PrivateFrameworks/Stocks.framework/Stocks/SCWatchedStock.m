@interface SCWatchedStock
+ (id)watchedStockWithSymbol:(id)a3 name:(id)a4 exchange:(id)a5;
- (BOOL)isEqual:(id)a3;
- (SCWatchedStock)initWithName:(id)a3 shortName:(id)a4 symbol:(id)a5 exchange:(id)a6 displaySymbol:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCWatchedStock

+ (id)watchedStockWithSymbol:(id)a3 name:(id)a4 exchange:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithName:v8 shortName:0 symbol:v9 exchange:v7 displaySymbol:0];

  return v10;
}

- (SCWatchedStock)initWithName:(id)a3 shortName:(id)a4 symbol:(id)a5 exchange:(id)a6 displaySymbol:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SCWatchedStock;
  v17 = [(SCWatchedStock *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, a3);
    objc_storeStrong(&v18->_shortName, a4);
    objc_storeStrong(&v18->_symbol, a5);
    objc_storeStrong(&v18->_exchange, a6);
    objc_storeStrong(&v18->_displaySymbol, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCWatchedStock *)self symbol];
  v5 = [v3 stringWithFormat:@"<SCWatchedStock %p, symbol=%@>", self, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SCWatchedStock *)self symbol];
    v7 = [v5 symbol];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(SCWatchedStock *)self exchange];
      v9 = [v5 exchange];
      v10 = [v8 isEqualToString:v9];
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
  v3 = [(SCWatchedStock *)self symbol];
  v4 = [v3 hash];
  v5 = [(SCWatchedStock *)self exchange];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end