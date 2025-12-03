@interface _CNVCardParsingSerialStrategy
- (id)parseData:(id)data options:(id)options resultFactory:(id)factory;
@end

@implementation _CNVCardParsingSerialStrategy

- (id)parseData:(id)data options:(id)options resultFactory:(id)factory
{
  factoryCopy = factory;
  optionsCopy = options;
  dataCopy = data;
  v10 = [[CNVCardParser alloc] initWithData:dataCopy options:optionsCopy];

  if (v10)
  {
    v11 = [(CNVCardParser *)v10 resultsWithFactory:factoryCopy];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

@end