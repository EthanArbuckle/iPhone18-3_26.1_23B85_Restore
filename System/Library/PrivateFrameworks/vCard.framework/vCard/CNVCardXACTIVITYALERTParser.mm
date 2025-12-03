@interface CNVCardXACTIVITYALERTParser
+ (id)valueWithParser:(id)parser;
@end

@implementation CNVCardXACTIVITYALERTParser

+ (id)valueWithParser:(id)parser
{
  parseRemainingLine = [parser parseRemainingLine];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CNVCardXACTIVITYALERTParser_valueWithParser___block_invoke;
  v9[3] = &unk_27A710DD0;
  v10 = dictionary;
  v5 = dictionary;
  [CNVCardActivityAlertSerialization parseString:parseRemainingLine intoTypeAndInfo:v9];
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void __47__CNVCardXACTIVITYALERTParser_valueWithParser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0 && [v5 count])
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

@end