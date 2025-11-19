@interface CNVCardReading
+ (id)firstDictionaryInData:(id)a3 error:(id *)a4;
@end

@implementation CNVCardReading

+ (id)firstDictionaryInData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(CNVCardParsedDictionaryResultBuilder);
  [CNVCardParser parseFirstResultInData:v4 resultBuilder:v5];

  v6 = [(CNVCardParsedDictionaryResultBuilder *)v5 build];

  return v6;
}

@end