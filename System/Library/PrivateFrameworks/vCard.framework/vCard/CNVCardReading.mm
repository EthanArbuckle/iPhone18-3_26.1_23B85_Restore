@interface CNVCardReading
+ (id)firstDictionaryInData:(id)data error:(id *)error;
@end

@implementation CNVCardReading

+ (id)firstDictionaryInData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = objc_alloc_init(CNVCardParsedDictionaryResultBuilder);
  [CNVCardParser parseFirstResultInData:dataCopy resultBuilder:v5];

  build = [(CNVCardParsedDictionaryResultBuilder *)v5 build];

  return build;
}

@end