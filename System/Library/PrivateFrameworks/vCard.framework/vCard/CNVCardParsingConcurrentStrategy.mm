@interface CNVCardParsingConcurrentStrategy
@end

@implementation CNVCardParsingConcurrentStrategy

id __69___CNVCardParsingConcurrentStrategy_parseData_options_resultFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 rangeValue];
  v6 = [v3 subdataWithRange:{v4, v5}];
  v7 = [*(a1 + 40) seriallyParsedData:v6 options:*(a1 + 48) resultFactory:*(a1 + 56)];

  return v7;
}

@end