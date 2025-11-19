@interface CSVTUIRegularExpressionMatcher
+ (int64_t)matchWithString:(id)a3 TrailingStr:(id)a4 LeadingStr:(id)a5 Pattern:(id)a6;
@end

@implementation CSVTUIRegularExpressionMatcher

+ (int64_t)matchWithString:(id)a3 TrailingStr:(id)a4 LeadingStr:(id)a5 Pattern:(id)a6
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a3 && a4 && a5 && a6)
  {
    v10 = a6;
    v11 = [a3 _stringByStrippingNoiseLeadingNoise:a5 TrailingNoise:a4];
    v12 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "+[CSVTUIRegularExpressionMatcher matchWithString:TrailingStr:LeadingStr:Pattern:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Testing [%@] against regex.", &v16, 0x16u);
    }

    v13 = [v11 _firstMatchesForRegularExpression:v10];

    v6 = [v13 count] != 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

@end