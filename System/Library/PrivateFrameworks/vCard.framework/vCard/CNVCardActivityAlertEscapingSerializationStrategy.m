@interface CNVCardActivityAlertEscapingSerializationStrategy
+ (BOOL)strategyWouldAlterString:(id)a3;
+ (id)charactersToTriggerStrategy;
+ (id)regex;
+ (id)serializeString:(id)a3;
@end

@implementation CNVCardActivityAlertEscapingSerializationStrategy

+ (BOOL)strategyWouldAlterString:(id)a3
{
  v4 = a3;
  v5 = [a1 charactersToTriggerStrategy];
  v6 = [v4 _cn_containsCharacterInSet:v5];

  return v6;
}

+ (id)charactersToTriggerStrategy
{
  if (charactersToTriggerStrategy_onceToken != -1)
  {
    +[CNVCardActivityAlertEscapingSerializationStrategy charactersToTriggerStrategy];
  }

  v3 = charactersToTriggerStrategy_sCharSet;

  return v3;
}

uint64_t __80__CNVCardActivityAlertEscapingSerializationStrategy_charactersToTriggerStrategy__block_invoke()
{
  charactersToTriggerStrategy_sCharSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"=, \\""}];

  return MEMORY[0x2821F96F8]();
}

+ (id)serializeString:(id)a3
{
  v4 = a3;
  v5 = [a1 regex];
  v6 = [v5 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"\\\\$1"}];

  return v6;
}

+ (id)regex
{
  if (regex_onceToken_92 != -1)
  {
    +[CNVCardActivityAlertEscapingSerializationStrategy regex];
  }

  v3 = regex_sRegEx_91;

  return v3;
}

uint64_t __58__CNVCardActivityAlertEscapingSerializationStrategy_regex__block_invoke()
{
  regex_sRegEx_91 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([= options:\\\\])" error:{0, 0}];

  return MEMORY[0x2821F96F8]();
}

@end