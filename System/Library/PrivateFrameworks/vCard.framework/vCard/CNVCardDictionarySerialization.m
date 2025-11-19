@interface CNVCardDictionarySerialization
+ (id)dictionariesWithData:(id)a3 error:(id *)a4;
+ (id)dictionariesWithData:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CNVCardDictionarySerialization

+ (id)dictionariesWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CNVCardReadingOptions);
  v8 = [a1 dictionariesWithData:v6 options:v7 error:a4];

  return v8;
}

+ (id)dictionariesWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNVCardParsedDictionaryResultBuilder factory];
  v9 = [CNVCardParser parseData:v7 options:v6 resultFactory:v8];

  return v9;
}

@end