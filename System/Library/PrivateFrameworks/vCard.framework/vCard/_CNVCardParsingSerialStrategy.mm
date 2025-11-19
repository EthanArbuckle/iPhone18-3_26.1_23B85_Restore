@interface _CNVCardParsingSerialStrategy
- (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5;
@end

@implementation _CNVCardParsingSerialStrategy

- (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNVCardParser alloc] initWithData:v9 options:v8];

  if (v10)
  {
    v11 = [(CNVCardParser *)v10 resultsWithFactory:v7];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

@end