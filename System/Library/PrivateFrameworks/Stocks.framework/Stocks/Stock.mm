@interface Stock
+ (id)BlankValueString;
+ (id)_potentiallyAbsentKeys;
+ (id)listNameOverridesBySymbol;
+ (id)localizedMagnitudeAbbreviatedStringWithString:(id)a3 fractionDigits:(unsigned int)a4;
+ (id)postfixCharacterForMagnitude:(unsigned int)a3 unitMagnitude:(unsigned int *)a4;
+ (id)symbolForURL:(id)a3;
+ (id)urlForStock:(id)a3;
+ (id)urlForStockSymbol:(id)a3;
- (BOOL)changeIsNegative;
- (BOOL)changeIsZero;
- (BOOL)doesMetadataNeedUpdate;
- (BOOL)doesQuoteNeedUpdate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMetadataStale;
- (BOOL)isQuoteStale;
- (BOOL)shouldUseCompanyNameAsListName:(unint64_t)a3;
- (NSString)formattedChange;
- (NSString)formattedChangePercent;
- (NSString)formattedPrice;
- (NSString)marketStatusDescription;
- (Stock)initWithDictionary:(id)a3;
- (double)_updateInterval;
- (id)archiveDictionary;
- (id)chartDataForInterval:(int64_t)a3;
- (id)description;
- (id)formattedChangePercent:(BOOL)a3;
- (id)formattedPriceDroppingFractionDigitsIfLengthExceeds:(unint64_t)a3;
- (id)listNameOverride;
- (id)listNameWithMaxIndexNameLength:(unint64_t)a3;
- (unint64_t)hash;
- (void)_updatePricePrecision;
- (void)dealloc;
- (void)populateFromDictionary:(id)a3;
- (void)setChartData:(id)a3 forInterval:(int64_t)a4;
- (void)updateMetadataWithDictionary:(id)a3 forTime:(double)a4;
- (void)updateQuoteWithDictionary:(id)a3 forTime:(double)a4;
@end

@implementation Stock

+ (id)urlForStockSymbol:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = @"symbol";
    v9[0] = a3;
    v3 = MEMORY[0x277CBEAC0];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [StocksOpenURLHelper URLForStockComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)urlForStock:(id)a3
{
  v4 = [a3 symbol];
  v5 = [a1 urlForStockSymbol:v4];

  return v5;
}

+ (id)symbolForURL:(id)a3
{
  v3 = [StocksOpenURLHelper componentDictionaryFromURL:a3];
  v4 = [v3 objectForKey:@"symbol"];

  return v4;
}

+ (id)BlankValueString
{
  v2 = BlankValueString_blankValueString;
  if (!BlankValueString_blankValueString)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8212];
    v4 = BlankValueString_blankValueString;
    BlankValueString_blankValueString = v3;

    v2 = BlankValueString_blankValueString;
  }

  return v2;
}

+ (id)postfixCharacterForMagnitude:(unsigned int)a3 unitMagnitude:(unsigned int *)a4
{
  *a4 = 0;
  if (a3 >= 3)
  {
    if (a3 >= 0xC)
    {
      v7 = 12;
    }

    else
    {
      v7 = a3;
    }

    v8 = [StocksBundles getBundle:1];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAGNITUDE_POSTFIX_%u", v7 + 1];
    v10 = [v8 localizedStringForKey:v9 value:&stru_287C73C90 table:@"Localizable"];

    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [(__CFString *)v10 stringByTrimmingCharactersInSet:v11];

    if ([(__CFString *)v10 length])
    {
      while (1)
      {
        v13 = [StocksBundles getBundle:1];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAGNITUDE_POSTFIX_%u", v7 + 1];
        v15 = [v13 localizedStringForKey:v14 value:&stru_287C73C90 table:@"Localizable"];

        v16 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:v16];

        if (([v17 isEqualToString:v12] & 1) == 0)
        {
          break;
        }

        if (--v7 <= 2)
        {
          goto LABEL_13;
        }
      }

      *a4 = v7 + 1;
    }

LABEL_13:

    v5 = v10;
  }

  else
  {
    v5 = &stru_287C73C90;
  }

  return v5;
}

+ (id)localizedMagnitudeAbbreviatedStringWithString:(id)a3 fractionDigits:(unsigned int)a4
{
  LODWORD(v4) = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    v9 = v8;
    v10 = log10f(v8);
    v11 = v10;
    if (v9 <= 0.0 || v11 >= 0xF)
    {
      v13 = +[Stock BlankValueString];
    }

    else
    {
      v22 = 0;
      v14 = [a1 postfixCharacterForMagnitude:v10 unitMagnitude:&v22];
      v15 = v22;
      if (v22)
      {
        v9 = v9 / __exp10(v22);
      }

      if (v4 == -1)
      {
        v4 = v15 - v11 + 3;
      }

      else
      {
        v4 = v4;
      }

      v16 = +[StockDataFormatter sharedDataFormatter];
      *&v17 = v9;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      v19 = [v16 formattedNumber:v18 withPrecision:v4 useGroupSeparator:1];

      if ([v14 length])
      {
        v20 = [v19 stringByAppendingString:v14];
      }

      else
      {
        v20 = v19;
      }

      v13 = v20;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(Stock *)self listName];
  v5 = [(Stock *)self formattedPrice];
  v6 = [v3 stringWithFormat:@"<Stock %p>: List name = %@, formatted price = %@", self, v4, v5];

  return v6;
}

- (void)populateFromDictionary:(id)a3
{
  v57 = a3;
  v4 = [v57 objectForKey:@"companyName"];
  [(Stock *)self setCompanyName:v4];

  v5 = [v57 objectForKey:@"shortCompanyName"];
  [(Stock *)self setShortCompanyName:v5];

  v6 = [v57 objectForKeyedSubscript:@"exchange"];
  if (v6)
  {
    v7 = +[ExchangeManager sharedManager];
    v8 = [v7 exchangeWithName:v6 createIfNotFound:1];
    [(Stock *)self setExchange:v8];
  }

  v9 = +[Stock BlankValueString];
  v10 = [v57 objectForKey:@"open"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  [(Stock *)self setOpen:v12];

  v13 = [v57 objectForKey:@"high"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  [(Stock *)self setHigh:v15];

  v16 = [v57 objectForKey:@"low"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v9;
  }

  [(Stock *)self setLow:v18];

  v19 = [v57 objectForKey:@"yearHigh"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v9;
  }

  [(Stock *)self setYearHigh:v21];

  v22 = [v57 objectForKey:@"yearLow"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v9;
  }

  [(Stock *)self setYearLow:v24];

  v25 = [v57 objectForKey:@"volume"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v9;
  }

  [(Stock *)self setVolume:v27];

  v28 = [v57 objectForKey:@"averageVolume"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v9;
  }

  [(Stock *)self setAverageVolume:v30];

  v31 = [v57 objectForKey:@"marketcap"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v9;
  }

  [(Stock *)self setMarketcap:v33];

  v34 = [v57 objectForKey:@"peRatio"];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v9;
  }

  [(Stock *)self setPeRatio:v36];

  v37 = [v57 objectForKey:@"dividendYield"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v9;
  }

  [(Stock *)self setDividendYield:v39];

  v40 = [v57 objectForKey:@"type"];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v9;
  }

  [(Stock *)self setSymbolType:v42];

  v43 = [v57 objectForKeyedSubscript:@"currency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  [(Stock *)self setCurrency:v44];
  v45 = [v57 objectForKey:@"price"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  [(Stock *)self setPrice:v46];
  v47 = [v57 objectForKey:@"change"];
  [(Stock *)self setChange:v47];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = [(NSString *)self->_change stringValue];
    [(Stock *)self setChange:v48];
  }

  v49 = [v57 objectForKey:@"infoURL"];
  if (v49)
  {
    v50 = [MEMORY[0x277CBEBC0] URLWithString:v49];
    [(Stock *)self setInfoURL:v50];
  }

  v51 = [v57 objectForKey:@"dataSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [[StockDataSource alloc] initWithDictionary:v51];
    [(Stock *)self setDataSource:v52];
  }

  v53 = [v57 objectForKey:@"lastUpdateTime"];
  [v53 doubleValue];
  self->_timeQuoteLastUpdated = v54;

  v55 = [v57 objectForKey:@"lastMetadataUpdateTime"];
  [v55 doubleValue];
  self->_timeMetadataLastUpdated = v56;

  [(Stock *)self _updatePricePrecision];
}

- (Stock)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = Stock;
  v5 = [(Stock *)&v9 init];
  if (v5 && ([v4 objectForKey:@"symbol"], v6 = objc_claimAutoreleasedReturnValue(), -[Stock setSymbol:](v5, "setSymbol:", v6), v6, v5->_symbol))
  {
    [(Stock *)v5 populateFromDictionary:v4];
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  for (i = 0; i != 9; ++i)
  {
    [(Stock *)self setChartData:0 forInterval:i];
  }

  v4.receiver = self;
  v4.super_class = Stock;
  [(Stock *)&v4 dealloc];
}

- (id)archiveDictionary
{
  if ([(Stock *)self isTransient]|| !self->_symbol)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:18];
    [v3 setObject:self->_symbol forKey:@"symbol"];
    companyName = self->_companyName;
    if (companyName)
    {
      [v3 setObject:companyName forKey:@"companyName"];
    }

    shortCompanyName = self->_shortCompanyName;
    if (shortCompanyName)
    {
      [v3 setObject:shortCompanyName forKey:@"shortCompanyName"];
    }

    currency = self->_currency;
    if (currency)
    {
      [v3 setObject:currency forKeyedSubscript:@"currency"];
    }

    price = self->_price;
    if (price)
    {
      [v3 setObject:price forKey:@"price"];
    }

    change = self->_change;
    if (change)
    {
      [v3 setObject:change forKey:@"change"];
    }

    exchange = self->_exchange;
    if (exchange)
    {
      v10 = [(Exchange *)exchange name];
      [v3 setObject:v10 forKeyedSubscript:@"exchange"];
    }

    v11 = +[Stock BlankValueString];
    v12 = v11;
    symbolType = self->_symbolType;
    if (symbolType && symbolType != v11)
    {
      [v3 setObject:symbolType forKey:@"type"];
    }

    open = self->_open;
    if (open && open != v12)
    {
      [v3 setObject:open forKey:@"open"];
    }

    high = self->_high;
    if (high && high != v12)
    {
      [v3 setObject:high forKey:@"high"];
    }

    low = self->_low;
    if (low && low != v12)
    {
      [v3 setObject:low forKey:@"low"];
    }

    yearHigh = self->_yearHigh;
    if (yearHigh && yearHigh != v12)
    {
      [v3 setObject:yearHigh forKey:@"yearHigh"];
    }

    yearLow = self->_yearLow;
    if (yearLow && yearLow != v12)
    {
      [v3 setObject:yearLow forKey:@"yearLow"];
    }

    volume = self->_volume;
    if (volume && volume != v12)
    {
      [v3 setObject:volume forKey:@"volume"];
    }

    averageVolume = self->_averageVolume;
    if (averageVolume && averageVolume != v12)
    {
      [v3 setObject:averageVolume forKey:@"averageVolume"];
    }

    marketcap = self->_marketcap;
    if (marketcap && marketcap != v12)
    {
      [v3 setObject:marketcap forKey:@"marketcap"];
    }

    peRatio = self->_peRatio;
    if (peRatio && peRatio != v12)
    {
      [v3 setObject:peRatio forKey:@"peRatio"];
    }

    dividendYield = self->_dividendYield;
    if (dividendYield && dividendYield != v12)
    {
      [v3 setObject:dividendYield forKey:@"dividendYield"];
    }

    infoURL = self->_infoURL;
    if (infoURL)
    {
      v25 = [(NSURL *)infoURL absoluteString];
      [v3 setObject:v25 forKey:@"infoURL"];
    }

    if (self->_timeQuoteLastUpdated != 0.0)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v3 setObject:v26 forKey:@"lastUpdateTime"];
    }

    if (self->_timeMetadataLastUpdated != 0.0)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v3 setObject:v27 forKey:@"lastMetadataUpdateTime"];
    }

    dataSource = self->_dataSource;
    if (dataSource)
    {
      v29 = [(StockDataSource *)dataSource archiveDictionary];
      [v3 setObject:v29 forKey:@"dataSource"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(Stock *)self symbol];
    v6 = [v4 symbol];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(Stock *)self symbol];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)changeIsNegative
{
  v3 = [(Stock *)self change];
  if ([v3 length])
  {
    v4 = [(Stock *)self change];
    v5 = [v4 characterAtIndex:0] == 45;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)changeIsZero
{
  v3 = [(Stock *)self formattedChangePercent:0];
  v4 = +[StockDataFormatter sharedDataFormatter];
  v5 = [v4 formattedNumber:&unk_287C80E98 withPrecision:-[Stock pricePrecision](self useGroupSeparator:{"pricePrecision"), 1}];

  LOBYTE(v4) = [v3 isEqualToString:v5];
  return v4;
}

- (double)_updateInterval
{
  [(Exchange *)self->_exchange streamInterval];
  if (result == 0.0)
  {
    v4 = [(Stock *)self marketIsOpen];
    result = 300.0;
    if (v4)
    {
      return 60.0;
    }
  }

  return result;
}

- (BOOL)isQuoteStale
{
  if (self->_timeQuoteLastUpdated == 0.0)
  {
    return 1;
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_timeQuoteLastUpdated;
  [(Stock *)self _updateInterval];
  return v4 >= v5;
}

- (BOOL)isMetadataStale
{
  if (self->_timeMetadataLastUpdated == 0.0)
  {
    return 1;
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_timeMetadataLastUpdated;
  [(Stock *)self _updateInterval];
  return v4 >= v5;
}

- (BOOL)doesQuoteNeedUpdate
{
  if (self->_timeQuoteLastUpdated == 0.0)
  {
    return 1;
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_timeQuoteLastUpdated;
  [(Stock *)self _updateInterval];
  return v4 >= fmax(v5, 300.0);
}

- (BOOL)doesMetadataNeedUpdate
{
  if (self->_timeMetadataLastUpdated == 0.0)
  {
    return 1;
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_timeMetadataLastUpdated;
  [(Stock *)self _updateInterval];
  return v4 >= fmax(v5, 300.0);
}

- (id)listNameWithMaxIndexNameLength:(unint64_t)a3
{
  v5 = [(Stock *)self listNameOverride];
  v6 = v5;
  if (!v5)
  {
    p_shortCompanyName = &self->_shortCompanyName;
    if (![(NSString *)self->_shortCompanyName length])
    {
      if ([(Stock *)self shouldUseCompanyNameAsListName:a3])
      {
        p_shortCompanyName = &self->_companyName;
      }

      else
      {
        p_shortCompanyName = &self->_symbol;
      }
    }

    v6 = *p_shortCompanyName;
  }

  v8 = v6;

  return v8;
}

- (id)listNameOverride
{
  v3 = [objc_opt_class() listNameOverridesBySymbol];
  v4 = [v3 objectForKey:self->_symbol];

  return v4;
}

+ (id)listNameOverridesBySymbol
{
  if (listNameOverridesBySymbol_onceToken != -1)
  {
    +[Stock listNameOverridesBySymbol];
  }

  v3 = listNameOverridesBySymbol_nameOverridesBySymbol;

  return v3;
}

void __34__Stock_listNameOverridesBySymbol__block_invoke()
{
  v0 = listNameOverridesBySymbol_nameOverridesBySymbol;
  listNameOverridesBySymbol_nameOverridesBySymbol = &unk_287C81048;
}

- (BOOL)shouldUseCompanyNameAsListName:(unint64_t)a3
{
  if (([(NSString *)self->_companyName naui_containsCJKScripts]& 1) != 0 || (v5 = [(Stock *)self isIndex]))
  {
    LOBYTE(v5) = [(NSString *)self->_companyName length]&& [(NSString *)self->_companyName length]<= a3;
  }

  return v5;
}

- (id)chartDataForInterval:(int64_t)a3
{
  v5 = self->_chartDataArray[a3];
  Current = CFAbsoluteTimeGetCurrent();
  [(StockChartData *)v5 expirationTime];
  if (Current >= v7)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    [(Stock *)self setChartData:0 forInterval:a3];
    v8 = v5;
    v5 = 0;
  }

  else
  {
    v8 = +[StockManager sharedManager];
    [v8 UpdateChartDataInLRU:v5];
  }

LABEL_6:

  return v5;
}

- (void)setChartData:(id)a3 forInterval:(int64_t)a4
{
  v7 = a3;
  v8 = &self->super.isa + a4;
  v11 = v8[1];
  v10 = (v8 + 1);
  v9 = v11;
  if (v11 != v7)
  {
    v14 = v7;
    v12 = v9;
    v13 = +[StockManager sharedManager];
    [v13 RemoveChartDataFromLRU:v12];
    objc_storeStrong(v10, a3);
    [v13 UpdateChartDataInLRU:v14];

    v7 = v14;
  }
}

- (void)updateQuoteWithDictionary:(id)a3 forTime:(double)a4
{
  v24 = a3;
  v6 = [v24 objectForKeyedSubscript:@"currency"];
  currency = v6;
  if (!v6)
  {
    currency = self->_currency;
  }

  [(Stock *)self setCurrency:currency];

  v8 = [v24 objectForKey:@"price"];
  price = v8;
  if (!v8)
  {
    price = self->_price;
  }

  [(Stock *)self setPrice:price];

  v10 = [v24 objectForKey:@"change"];
  change = v10;
  if (!v10)
  {
    change = self->_change;
  }

  [(Stock *)self setChange:change];

  v12 = [v24 objectForKey:@"type"];
  symbolType = v12;
  if (!v12)
  {
    symbolType = self->_symbolType;
  }

  [(Stock *)self setSymbolType:symbolType];

  v14 = [v24 objectForKeyedSubscript:@"exchange"];
  if (v14)
  {
    v15 = +[ExchangeManager sharedManager];
    v16 = [v15 exchangeWithName:v14 createIfNotFound:1];
    [(Stock *)self setExchange:v16];
  }

  v17 = [v24 objectForKey:@"marketcap"];
  v18 = v17;
  if (v17)
  {
    if ([v17 isEqualToString:@"N/A"])
    {
      v19 = +[Stock BlankValueString];
      [(Stock *)self setMarketcap:v19];
    }

    else
    {
      [(Stock *)self setMarketcap:v18];
    }
  }

  v20 = [v24 objectForKey:@"dataSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [[StockDataSource alloc] initWithDictionary:v20];
    [(Stock *)self setDataSource:v21];
  }

  v22 = [v24 objectForKey:@"shortCompanyName"];
  shortCompanyName = v22;
  if (!v22)
  {
    shortCompanyName = self->_shortCompanyName;
  }

  [(Stock *)self setShortCompanyName:shortCompanyName];

  self->_timeQuoteLastUpdated = a4;
  [(Stock *)self _updatePricePrecision];
}

- (void)updateMetadataWithDictionary:(id)a3 forTime:(double)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:@"companyName"];
  companyName = v7;
  if (!v7)
  {
    companyName = self->_companyName;
  }

  [(Stock *)self setCompanyName:companyName];

  v9 = [v6 objectForKey:@"exchange"];
  if (v9)
  {
    v10 = +[ExchangeManager sharedManager];
    v11 = [v10 exchangeWithName:v9 createIfNotFound:1];
    [(Stock *)self setExchange:v11];
  }

  v12 = [v6 objectForKeyedSubscript:@"currency"];
  currency = v12;
  if (!v12)
  {
    currency = self->_currency;
  }

  [(Stock *)self setCurrency:currency];

  v14 = +[Stock BlankValueString];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = +[Stock _potentiallyAbsentKeys];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v46 = v9;
    v47 = self;
    v18 = 0;
    v19 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v21 = v18;
        if (*v49 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v48 + 1) + 8 * i);
        v18 = [v6 objectForKey:{v22, v46, v47}];

        if (v18)
        {
          if (([v18 isEqualToString:@"N/A"] & 1) != 0 || (objc_msgSend(v18, "floatValue"), v23 == 0.0))
          {
            [v6 setObject:v14 forKey:v22];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v17);

    v9 = v46;
    self = v47;
  }

  v24 = [v6 objectForKey:@"open"];
  open = v24;
  if (!v24)
  {
    open = self->_open;
  }

  [(Stock *)self setOpen:open];

  v26 = [v6 objectForKey:@"high"];
  high = v26;
  if (!v26)
  {
    high = self->_high;
  }

  [(Stock *)self setHigh:high];

  v28 = [v6 objectForKey:@"low"];
  low = v28;
  if (!v28)
  {
    low = self->_low;
  }

  [(Stock *)self setLow:low];

  v30 = [v6 objectForKey:@"yearHigh"];
  yearHigh = v30;
  if (!v30)
  {
    yearHigh = self->_yearHigh;
  }

  [(Stock *)self setYearHigh:yearHigh];

  v32 = [v6 objectForKey:@"yearLow"];
  yearLow = v32;
  if (!v32)
  {
    yearLow = self->_yearLow;
  }

  [(Stock *)self setYearLow:yearLow];

  v34 = [v6 objectForKey:@"volume"];
  volume = v34;
  if (!v34)
  {
    volume = self->_volume;
  }

  [(Stock *)self setVolume:volume];

  v36 = [v6 objectForKey:@"averageVolume"];
  averageVolume = v36;
  if (!v36)
  {
    averageVolume = self->_averageVolume;
  }

  [(Stock *)self setAverageVolume:averageVolume];

  v38 = [v6 objectForKey:@"marketcap"];
  marketcap = v38;
  if (!v38)
  {
    marketcap = self->_marketcap;
  }

  [(Stock *)self setMarketcap:marketcap];

  v40 = [v6 objectForKey:@"peRatio"];
  peRatio = v40;
  if (!v40)
  {
    peRatio = self->_peRatio;
  }

  [(Stock *)self setPeRatio:peRatio];

  v42 = [v6 objectForKey:@"dividendYield"];
  dividendYield = v42;
  if (!v42)
  {
    dividendYield = self->_dividendYield;
  }

  [(Stock *)self setDividendYield:dividendYield];

  v44 = [v6 objectForKey:@"infoURL"];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEBC0] URLWithString:v44];
    [(Stock *)self setInfoURL:v45];
  }

  else
  {
    [(Stock *)self setInfoURL:0];
  }

  self->_timeMetadataLastUpdated = a4;
}

+ (id)_potentiallyAbsentKeys
{
  v2 = _potentiallyAbsentKeys_potentiallyAbsentKeys;
  if (!_potentiallyAbsentKeys_potentiallyAbsentKeys)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"open", @"high", @"low", @"yearHigh", @"yearLow", @"volume", @"averageVolume", @"marketcap", @"peRatio", @"dividendYield", 0}];
    v4 = _potentiallyAbsentKeys_potentiallyAbsentKeys;
    _potentiallyAbsentKeys_potentiallyAbsentKeys = v3;

    v2 = _potentiallyAbsentKeys_potentiallyAbsentKeys;
  }

  return v2;
}

- (void)_updatePricePrecision
{
  v3 = [(Stock *)self price];
  v4 = [v3 rangeOfString:@"."];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_pricePrecision = 0;
  }

  else if ([(NSString *)self->_symbol hasSuffix:@"=X"])
  {
    self->_pricePrecision = 3;
  }

  else
  {
    v8 = [(Stock *)self price];
    if (([v8 length] - v4) < 3)
    {
      self->_pricePrecision = 2;
    }

    else
    {
      v5 = [(Stock *)self price];
      [v5 floatValue];
      if (v6 >= 1.0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      self->_pricePrecision = v7;
    }
  }
}

- (NSString)marketStatusDescription
{
  if ([(Stock *)self marketIsOpen])
  {
    v3 = [(Stock *)self dataSource];
    [v3 localizedSourceDescription];
  }

  else
  {
    v3 = [StocksBundles getBundle:1];
    [v3 localizedStringForKey:@"Market closed" value:&stru_287C73C90 table:@"Localizable"];
  }
  v4 = ;

  return v4;
}

- (NSString)formattedPrice
{
  v3 = +[StockDataFormatter sharedDataFormatter];
  v4 = [v3 formattedPriceForStock:self withPrecision:{-[Stock pricePrecision](self, "pricePrecision")}];

  return v4;
}

- (NSString)formattedChange
{
  v3 = +[StockDataFormatter sharedDataFormatter];
  v4 = [v3 formattedChangeInPointsForStock:self withPrecision:{-[Stock pricePrecision](self, "pricePrecision")}];

  return v4;
}

- (NSString)formattedChangePercent
{
  v3 = +[StockDataFormatter sharedDataFormatter];
  v4 = [v3 formattedChangeInPercentForStock:self];

  return v4;
}

- (id)formattedChangePercent:(BOOL)a3
{
  if (a3)
  {
    [(Stock *)self formattedChangePercent];
  }

  else
  {
    [(Stock *)self formattedChange];
  }
  v3 = ;

  return v3;
}

- (id)formattedPriceDroppingFractionDigitsIfLengthExceeds:(unint64_t)a3
{
  v5 = +[StockDataFormatter sharedDataFormatter];
  v6 = [v5 formattedPriceForStock:self withPrecision:-[Stock pricePrecision](self droppingFractionDigitsIfLengthExceeds:{"pricePrecision"), a3}];

  return v6;
}

@end