@interface Stock
+ (id)BlankValueString;
+ (id)_potentiallyAbsentKeys;
+ (id)listNameOverridesBySymbol;
+ (id)localizedMagnitudeAbbreviatedStringWithString:(id)string fractionDigits:(unsigned int)digits;
+ (id)postfixCharacterForMagnitude:(unsigned int)magnitude unitMagnitude:(unsigned int *)unitMagnitude;
+ (id)symbolForURL:(id)l;
+ (id)urlForStock:(id)stock;
+ (id)urlForStockSymbol:(id)symbol;
- (BOOL)changeIsNegative;
- (BOOL)changeIsZero;
- (BOOL)doesMetadataNeedUpdate;
- (BOOL)doesQuoteNeedUpdate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMetadataStale;
- (BOOL)isQuoteStale;
- (BOOL)shouldUseCompanyNameAsListName:(unint64_t)name;
- (NSString)formattedChange;
- (NSString)formattedChangePercent;
- (NSString)formattedPrice;
- (NSString)marketStatusDescription;
- (Stock)initWithDictionary:(id)dictionary;
- (double)_updateInterval;
- (id)archiveDictionary;
- (id)chartDataForInterval:(int64_t)interval;
- (id)description;
- (id)formattedChangePercent:(BOOL)percent;
- (id)formattedPriceDroppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds;
- (id)listNameOverride;
- (id)listNameWithMaxIndexNameLength:(unint64_t)length;
- (unint64_t)hash;
- (void)_updatePricePrecision;
- (void)dealloc;
- (void)populateFromDictionary:(id)dictionary;
- (void)setChartData:(id)data forInterval:(int64_t)interval;
- (void)updateMetadataWithDictionary:(id)dictionary forTime:(double)time;
- (void)updateQuoteWithDictionary:(id)dictionary forTime:(double)time;
@end

@implementation Stock

+ (id)urlForStockSymbol:(id)symbol
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (symbol)
  {
    v8 = @"symbol";
    v9[0] = symbol;
    v3 = MEMORY[0x277CBEAC0];
    symbolCopy = symbol;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [StocksOpenURLHelper URLForStockComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)urlForStock:(id)stock
{
  symbol = [stock symbol];
  v5 = [self urlForStockSymbol:symbol];

  return v5;
}

+ (id)symbolForURL:(id)l
{
  v3 = [StocksOpenURLHelper componentDictionaryFromURL:l];
  v4 = [v3 objectForKey:@"symbol"];

  return v4;
}

+ (id)BlankValueString
{
  v2 = BlankValueString_blankValueString;
  if (!BlankValueString_blankValueString)
  {
    8212 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8212];
    v4 = BlankValueString_blankValueString;
    BlankValueString_blankValueString = 8212;

    v2 = BlankValueString_blankValueString;
  }

  return v2;
}

+ (id)postfixCharacterForMagnitude:(unsigned int)magnitude unitMagnitude:(unsigned int *)unitMagnitude
{
  *unitMagnitude = 0;
  if (magnitude >= 3)
  {
    if (magnitude >= 0xC)
    {
      magnitudeCopy = 12;
    }

    else
    {
      magnitudeCopy = magnitude;
    }

    v8 = [StocksBundles getBundle:1];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAGNITUDE_POSTFIX_%u", magnitudeCopy + 1];
    v10 = [v8 localizedStringForKey:v9 value:&stru_287C73C90 table:@"Localizable"];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [(__CFString *)v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([(__CFString *)v10 length])
    {
      while (1)
      {
        v13 = [StocksBundles getBundle:1];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAGNITUDE_POSTFIX_%u", magnitudeCopy + 1];
        v15 = [v13 localizedStringForKey:v14 value:&stru_287C73C90 table:@"Localizable"];

        whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

        if (([v17 isEqualToString:v12] & 1) == 0)
        {
          break;
        }

        if (--magnitudeCopy <= 2)
        {
          goto LABEL_13;
        }
      }

      *unitMagnitude = magnitudeCopy + 1;
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

+ (id)localizedMagnitudeAbbreviatedStringWithString:(id)string fractionDigits:(unsigned int)digits
{
  LODWORD(v4) = digits;
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy)
  {
    [stringCopy floatValue];
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
      v14 = [self postfixCharacterForMagnitude:v10 unitMagnitude:&v22];
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
  listName = [(Stock *)self listName];
  formattedPrice = [(Stock *)self formattedPrice];
  v6 = [v3 stringWithFormat:@"<Stock %p>: List name = %@, formatted price = %@", self, listName, formattedPrice];

  return v6;
}

- (void)populateFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"companyName"];
  [(Stock *)self setCompanyName:v4];

  v5 = [dictionaryCopy objectForKey:@"shortCompanyName"];
  [(Stock *)self setShortCompanyName:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"exchange"];
  if (v6)
  {
    v7 = +[ExchangeManager sharedManager];
    v8 = [v7 exchangeWithName:v6 createIfNotFound:1];
    [(Stock *)self setExchange:v8];
  }

  v9 = +[Stock BlankValueString];
  v10 = [dictionaryCopy objectForKey:@"open"];
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

  v13 = [dictionaryCopy objectForKey:@"high"];
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

  v16 = [dictionaryCopy objectForKey:@"low"];
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

  v19 = [dictionaryCopy objectForKey:@"yearHigh"];
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

  v22 = [dictionaryCopy objectForKey:@"yearLow"];
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

  v25 = [dictionaryCopy objectForKey:@"volume"];
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

  v28 = [dictionaryCopy objectForKey:@"averageVolume"];
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

  v31 = [dictionaryCopy objectForKey:@"marketcap"];
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

  v34 = [dictionaryCopy objectForKey:@"peRatio"];
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

  v37 = [dictionaryCopy objectForKey:@"dividendYield"];
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

  v40 = [dictionaryCopy objectForKey:@"type"];
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

  v43 = [dictionaryCopy objectForKeyedSubscript:@"currency"];
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
  v45 = [dictionaryCopy objectForKey:@"price"];
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
  v47 = [dictionaryCopy objectForKey:@"change"];
  [(Stock *)self setChange:v47];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [(NSString *)self->_change stringValue];
    [(Stock *)self setChange:stringValue];
  }

  v49 = [dictionaryCopy objectForKey:@"infoURL"];
  if (v49)
  {
    v50 = [MEMORY[0x277CBEBC0] URLWithString:v49];
    [(Stock *)self setInfoURL:v50];
  }

  v51 = [dictionaryCopy objectForKey:@"dataSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [[StockDataSource alloc] initWithDictionary:v51];
    [(Stock *)self setDataSource:v52];
  }

  v53 = [dictionaryCopy objectForKey:@"lastUpdateTime"];
  [v53 doubleValue];
  self->_timeQuoteLastUpdated = v54;

  v55 = [dictionaryCopy objectForKey:@"lastMetadataUpdateTime"];
  [v55 doubleValue];
  self->_timeMetadataLastUpdated = v56;

  [(Stock *)self _updatePricePrecision];
}

- (Stock)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = Stock;
  v5 = [(Stock *)&v9 init];
  if (v5 && ([dictionaryCopy objectForKey:@"symbol"], v6 = objc_claimAutoreleasedReturnValue(), -[Stock setSymbol:](v5, "setSymbol:", v6), v6, v5->_symbol))
  {
    [(Stock *)v5 populateFromDictionary:dictionaryCopy];
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
      name = [(Exchange *)exchange name];
      [v3 setObject:name forKeyedSubscript:@"exchange"];
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
      absoluteString = [(NSURL *)infoURL absoluteString];
      [v3 setObject:absoluteString forKey:@"infoURL"];
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
      archiveDictionary = [(StockDataSource *)dataSource archiveDictionary];
      [v3 setObject:archiveDictionary forKey:@"dataSource"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    symbol = [(Stock *)self symbol];
    symbol2 = [equalCopy symbol];
    v7 = [symbol isEqualToString:symbol2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  symbol = [(Stock *)self symbol];
  v3 = [symbol hash];

  return v3;
}

- (BOOL)changeIsNegative
{
  change = [(Stock *)self change];
  if ([change length])
  {
    change2 = [(Stock *)self change];
    v5 = [change2 characterAtIndex:0] == 45;
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
    marketIsOpen = [(Stock *)self marketIsOpen];
    result = 300.0;
    if (marketIsOpen)
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

- (id)listNameWithMaxIndexNameLength:(unint64_t)length
{
  listNameOverride = [(Stock *)self listNameOverride];
  v6 = listNameOverride;
  if (!listNameOverride)
  {
    p_shortCompanyName = &self->_shortCompanyName;
    if (![(NSString *)self->_shortCompanyName length])
    {
      if ([(Stock *)self shouldUseCompanyNameAsListName:length])
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
  listNameOverridesBySymbol = [objc_opt_class() listNameOverridesBySymbol];
  v4 = [listNameOverridesBySymbol objectForKey:self->_symbol];

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

- (BOOL)shouldUseCompanyNameAsListName:(unint64_t)name
{
  if (([(NSString *)self->_companyName naui_containsCJKScripts]& 1) != 0 || (v5 = [(Stock *)self isIndex]))
  {
    LOBYTE(v5) = [(NSString *)self->_companyName length]&& [(NSString *)self->_companyName length]<= name;
  }

  return v5;
}

- (id)chartDataForInterval:(int64_t)interval
{
  v5 = self->_chartDataArray[interval];
  Current = CFAbsoluteTimeGetCurrent();
  [(StockChartData *)v5 expirationTime];
  if (Current >= v7)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    [(Stock *)self setChartData:0 forInterval:interval];
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

- (void)setChartData:(id)data forInterval:(int64_t)interval
{
  dataCopy = data;
  v8 = &self->super.isa + interval;
  v11 = v8[1];
  v10 = (v8 + 1);
  v9 = v11;
  if (v11 != dataCopy)
  {
    v14 = dataCopy;
    v12 = v9;
    v13 = +[StockManager sharedManager];
    [v13 RemoveChartDataFromLRU:v12];
    objc_storeStrong(v10, data);
    [v13 UpdateChartDataInLRU:v14];

    dataCopy = v14;
  }
}

- (void)updateQuoteWithDictionary:(id)dictionary forTime:(double)time
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"currency"];
  currency = v6;
  if (!v6)
  {
    currency = self->_currency;
  }

  [(Stock *)self setCurrency:currency];

  v8 = [dictionaryCopy objectForKey:@"price"];
  price = v8;
  if (!v8)
  {
    price = self->_price;
  }

  [(Stock *)self setPrice:price];

  v10 = [dictionaryCopy objectForKey:@"change"];
  change = v10;
  if (!v10)
  {
    change = self->_change;
  }

  [(Stock *)self setChange:change];

  v12 = [dictionaryCopy objectForKey:@"type"];
  symbolType = v12;
  if (!v12)
  {
    symbolType = self->_symbolType;
  }

  [(Stock *)self setSymbolType:symbolType];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"exchange"];
  if (v14)
  {
    v15 = +[ExchangeManager sharedManager];
    v16 = [v15 exchangeWithName:v14 createIfNotFound:1];
    [(Stock *)self setExchange:v16];
  }

  v17 = [dictionaryCopy objectForKey:@"marketcap"];
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

  v20 = [dictionaryCopy objectForKey:@"dataSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [[StockDataSource alloc] initWithDictionary:v20];
    [(Stock *)self setDataSource:v21];
  }

  v22 = [dictionaryCopy objectForKey:@"shortCompanyName"];
  shortCompanyName = v22;
  if (!v22)
  {
    shortCompanyName = self->_shortCompanyName;
  }

  [(Stock *)self setShortCompanyName:shortCompanyName];

  self->_timeQuoteLastUpdated = time;
  [(Stock *)self _updatePricePrecision];
}

- (void)updateMetadataWithDictionary:(id)dictionary forTime:(double)time
{
  v53 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:@"companyName"];
  companyName = v7;
  if (!v7)
  {
    companyName = self->_companyName;
  }

  [(Stock *)self setCompanyName:companyName];

  v9 = [dictionaryCopy objectForKey:@"exchange"];
  if (v9)
  {
    v10 = +[ExchangeManager sharedManager];
    v11 = [v10 exchangeWithName:v9 createIfNotFound:1];
    [(Stock *)self setExchange:v11];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"currency"];
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
    selfCopy = self;
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
        v18 = [dictionaryCopy objectForKey:{v22, v46, selfCopy}];

        if (v18)
        {
          if (([v18 isEqualToString:@"N/A"] & 1) != 0 || (objc_msgSend(v18, "floatValue"), v23 == 0.0))
          {
            [dictionaryCopy setObject:v14 forKey:v22];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v17);

    v9 = v46;
    self = selfCopy;
  }

  v24 = [dictionaryCopy objectForKey:@"open"];
  open = v24;
  if (!v24)
  {
    open = self->_open;
  }

  [(Stock *)self setOpen:open];

  v26 = [dictionaryCopy objectForKey:@"high"];
  high = v26;
  if (!v26)
  {
    high = self->_high;
  }

  [(Stock *)self setHigh:high];

  v28 = [dictionaryCopy objectForKey:@"low"];
  low = v28;
  if (!v28)
  {
    low = self->_low;
  }

  [(Stock *)self setLow:low];

  v30 = [dictionaryCopy objectForKey:@"yearHigh"];
  yearHigh = v30;
  if (!v30)
  {
    yearHigh = self->_yearHigh;
  }

  [(Stock *)self setYearHigh:yearHigh];

  v32 = [dictionaryCopy objectForKey:@"yearLow"];
  yearLow = v32;
  if (!v32)
  {
    yearLow = self->_yearLow;
  }

  [(Stock *)self setYearLow:yearLow];

  v34 = [dictionaryCopy objectForKey:@"volume"];
  volume = v34;
  if (!v34)
  {
    volume = self->_volume;
  }

  [(Stock *)self setVolume:volume];

  v36 = [dictionaryCopy objectForKey:@"averageVolume"];
  averageVolume = v36;
  if (!v36)
  {
    averageVolume = self->_averageVolume;
  }

  [(Stock *)self setAverageVolume:averageVolume];

  v38 = [dictionaryCopy objectForKey:@"marketcap"];
  marketcap = v38;
  if (!v38)
  {
    marketcap = self->_marketcap;
  }

  [(Stock *)self setMarketcap:marketcap];

  v40 = [dictionaryCopy objectForKey:@"peRatio"];
  peRatio = v40;
  if (!v40)
  {
    peRatio = self->_peRatio;
  }

  [(Stock *)self setPeRatio:peRatio];

  v42 = [dictionaryCopy objectForKey:@"dividendYield"];
  dividendYield = v42;
  if (!v42)
  {
    dividendYield = self->_dividendYield;
  }

  [(Stock *)self setDividendYield:dividendYield];

  v44 = [dictionaryCopy objectForKey:@"infoURL"];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEBC0] URLWithString:v44];
    [(Stock *)self setInfoURL:v45];
  }

  else
  {
    [(Stock *)self setInfoURL:0];
  }

  self->_timeMetadataLastUpdated = time;
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
  price = [(Stock *)self price];
  v4 = [price rangeOfString:@"."];

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
    price2 = [(Stock *)self price];
    if (([price2 length] - v4) < 3)
    {
      self->_pricePrecision = 2;
    }

    else
    {
      price3 = [(Stock *)self price];
      [price3 floatValue];
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
    dataSource = [(Stock *)self dataSource];
    [dataSource localizedSourceDescription];
  }

  else
  {
    dataSource = [StocksBundles getBundle:1];
    [dataSource localizedStringForKey:@"Market closed" value:&stru_287C73C90 table:@"Localizable"];
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

- (id)formattedChangePercent:(BOOL)percent
{
  if (percent)
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

- (id)formattedPriceDroppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds
{
  v5 = +[StockDataFormatter sharedDataFormatter];
  v6 = [v5 formattedPriceForStock:self withPrecision:-[Stock pricePrecision](self droppingFractionDigitsIfLengthExceeds:{"pricePrecision"), exceeds}];

  return v6;
}

@end