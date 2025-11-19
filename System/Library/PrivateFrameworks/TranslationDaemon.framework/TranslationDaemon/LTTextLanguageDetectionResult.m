@interface LTTextLanguageDetectionResult
@end

@implementation LTTextLanguageDetectionResult

uint64_t __113___LTTextLanguageDetectionResult_Daemon__initWithDetectionCounts_availableLocales_lowConfidenceLocales_strategy___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 countForObject:a3];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

id __68___LTTextLanguageDetectionResult_Daemon__sendAnalytics_isSupported___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v1 = &stru_284834138;
  }

  v6[1] = @"isSupported";
  v7[0] = v1;
  v6[0] = @"language";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end