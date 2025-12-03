@interface CNVCardDictionarySerialization
+ (id)dictionariesWithData:(id)data error:(id *)error;
+ (id)dictionariesWithData:(id)data options:(id)options error:(id *)error;
@end

@implementation CNVCardDictionarySerialization

+ (id)dictionariesWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = objc_alloc_init(CNVCardReadingOptions);
  v8 = [self dictionariesWithData:dataCopy options:v7 error:error];

  return v8;
}

+ (id)dictionariesWithData:(id)data options:(id)options error:(id *)error
{
  optionsCopy = options;
  dataCopy = data;
  v8 = +[CNVCardParsedDictionaryResultBuilder factory];
  v9 = [CNVCardParser parseData:dataCopy options:optionsCopy resultFactory:v8];

  return v9;
}

@end