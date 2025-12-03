@interface CSVTUIRegularExpressionMatcher
+ (int64_t)matchWithString:(id)string TrailingStr:(id)str LeadingStr:(id)leadingStr Pattern:(id)pattern;
@end

@implementation CSVTUIRegularExpressionMatcher

+ (int64_t)matchWithString:(id)string TrailingStr:(id)str LeadingStr:(id)leadingStr Pattern:(id)pattern
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (string && str && leadingStr && pattern)
  {
    patternCopy = pattern;
    v11 = [string _stringByStrippingNoiseLeadingNoise:leadingStr TrailingNoise:str];
    v12 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "+[CSVTUIRegularExpressionMatcher matchWithString:TrailingStr:LeadingStr:Pattern:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Testing [%@] against regex.", &v16, 0x16u);
    }

    v13 = [v11 _firstMatchesForRegularExpression:patternCopy];

    v6 = [v13 count] != 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

@end