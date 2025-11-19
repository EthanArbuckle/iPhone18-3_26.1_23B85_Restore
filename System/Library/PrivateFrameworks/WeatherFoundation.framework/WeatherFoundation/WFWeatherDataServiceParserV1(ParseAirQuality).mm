@interface WFWeatherDataServiceParserV1(ParseAirQuality)
@end

@implementation WFWeatherDataServiceParserV1(ParseAirQuality)

- (void)parseAirQualityFromData:()ParseAirQuality locale:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "Successfully parsed aqi conditions: %@", &v2, 0xCu);
}

@end