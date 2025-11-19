@interface CNVCardActivityAlertQuotingSerializationStrategy
+ (id)regex;
+ (id)serializeString:(id)a3;
@end

@implementation CNVCardActivityAlertQuotingSerializationStrategy

+ (id)serializeString:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [a1 regex];
  v7 = [v4 length];

  [v6 replaceMatchesInString:v5 options:0 range:0 withTemplate:{v7, @"\\\\$1"}];
  [v5 insertString:@"" atIndex:0];
  [v5 appendString:@""];

  return v5;
}

+ (id)regex
{
  if (regex_onceToken != -1)
  {
    +[CNVCardActivityAlertQuotingSerializationStrategy regex];
  }

  v3 = regex_sRegEx;

  return v3;
}

uint64_t __57__CNVCardActivityAlertQuotingSerializationStrategy_regex__block_invoke()
{
  regex_sRegEx = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([])" options:0 error:0];

  return MEMORY[0x2821F96F8]();
}

@end