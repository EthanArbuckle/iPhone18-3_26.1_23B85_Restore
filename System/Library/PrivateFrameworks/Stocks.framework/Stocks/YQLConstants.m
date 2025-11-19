@interface YQLConstants
+ (id)YQLDataSourceToStocksKeyMap;
+ (id)YQLExchangeToStocksKeyMap;
+ (id)YQLQuoteToStocksKeyMap;
@end

@implementation YQLConstants

+ (id)YQLQuoteToStocksKeyMap
{
  if (YQLQuoteToStocksKeyMap_onceToken != -1)
  {
    +[YQLConstants YQLQuoteToStocksKeyMap];
  }

  v3 = YQLQuoteToStocksKeyMap_quoteKeyMap;

  return v3;
}

void __38__YQLConstants_YQLQuoteToStocksKeyMap__block_invoke()
{
  v3[19] = *MEMORY[0x277D85DE8];
  v2[0] = @"id_symbol";
  v2[1] = @"price";
  v3[0] = @"symbol";
  v3[1] = @"price";
  v2[2] = @"change";
  v2[3] = @"market_cap";
  v3[2] = @"change";
  v3[3] = @"marketcap";
  v2[4] = @"name";
  v2[5] = @"short_name";
  v3[4] = @"companyName";
  v3[5] = @"shortCompanyName";
  v2[6] = @"currency";
  v2[7] = @"open";
  v3[6] = @"currency";
  v3[7] = @"open";
  v2[8] = @"day_high";
  v2[9] = @"day_low";
  v3[8] = @"high";
  v3[9] = @"low";
  v2[10] = @"volume";
  v2[11] = @"avg_3m_volume";
  v3[10] = @"volume";
  v3[11] = @"averageVolume";
  v2[12] = @"exchange";
  v2[13] = @"pe_ratio";
  v3[12] = @"exchange";
  v3[13] = @"peRatio";
  v2[14] = @"year_high";
  v2[15] = @"year_low";
  v3[14] = @"yearHigh";
  v3[15] = @"yearLow";
  v2[16] = @"dividend_yield";
  v2[17] = @"details_url";
  v3[16] = @"dividendYield";
  v3[17] = @"infoURL";
  v2[18] = @"data_type";
  v3[18] = @"type";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:19];
  v1 = YQLQuoteToStocksKeyMap_quoteKeyMap;
  YQLQuoteToStocksKeyMap_quoteKeyMap = v0;
}

+ (id)YQLExchangeToStocksKeyMap
{
  if (YQLExchangeToStocksKeyMap_onceToken != -1)
  {
    +[YQLConstants YQLExchangeToStocksKeyMap];
  }

  v3 = YQLExchangeToStocksKeyMap_exchangeKeyMap;

  return v3;
}

void __41__YQLConstants_YQLExchangeToStocksKeyMap__block_invoke()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v2[0] = @"PRE_MARKET";
  v2[1] = @"REGULAR_MARKET";
  v3[0] = &unk_287C80F40;
  v3[1] = &unk_287C80F58;
  v2[2] = @"AFTERHOURS_MARKET";
  v2[3] = @"AFTER_AFTER_HOURS";
  v3[2] = &unk_287C80F70;
  v3[3] = &unk_287C80F88;
  v2[4] = @"PRE_PRE_MARKET_HOURS";
  v2[5] = @"MARKET_CLOSED";
  v3[4] = &unk_287C80FA0;
  v3[5] = &unk_287C80FB8;
  v2[6] = @"EXTENDED_HOURS_MARKET";
  v2[7] = @"WEEKEND_MARKET_CLOSED";
  v3[6] = &unk_287C80F58;
  v3[7] = &unk_287C80FB8;
  v2[8] = @"HOLIDAY_MARKET_CLOSED";
  v2[9] = @"CHANGE_DATA_RESET";
  v3[8] = &unk_287C80FB8;
  v3[9] = &unk_287C80FB8;
  v2[10] = @"name";
  v3[10] = @"name";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = YQLExchangeToStocksKeyMap_exchangeKeyMap;
  YQLExchangeToStocksKeyMap_exchangeKeyMap = v0;
}

+ (id)YQLDataSourceToStocksKeyMap
{
  if (YQLDataSourceToStocksKeyMap_onceToken != -1)
  {
    +[YQLConstants YQLDataSourceToStocksKeyMap];
  }

  v3 = YQLDataSourceToStocksKeyMap_datasourceKeyMap;

  return v3;
}

void __43__YQLConstants_YQLDataSourceToStocksKeyMap__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"id";
  v2[1] = @"name";
  v3[0] = @"id";
  v3[1] = @"name";
  v2[2] = @"text";
  v3[2] = @"text";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = YQLDataSourceToStocksKeyMap_datasourceKeyMap;
  YQLDataSourceToStocksKeyMap_datasourceKeyMap = v0;
}

@end