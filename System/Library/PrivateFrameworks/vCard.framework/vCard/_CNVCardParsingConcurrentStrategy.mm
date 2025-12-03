@interface _CNVCardParsingConcurrentStrategy
- (id)parseData:(id)data options:(id)options resultFactory:(id)factory;
- (id)seriallyParsedData:(id)data options:(id)options resultFactory:(id)factory;
@end

@implementation _CNVCardParsingConcurrentStrategy

- (id)parseData:(id)data options:(id)options resultFactory:(id)factory
{
  dataCopy = data;
  optionsCopy = options;
  factoryCopy = factory;
  v11 = [CNVCardRangeFinder allRangesInData:dataCopy];
  left = [v11 left];

  v13 = [left _cn_balancedSlicesWithMaximumCount:128];
  v14 = [v13 _cn_map:&__block_literal_global_12];

  if ([v14 count] <= 1)
  {
    _cn_flatten = [(_CNVCardParsingConcurrentStrategy *)self seriallyParsedData:dataCopy options:optionsCopy resultFactory:factoryCopy];
  }

  else
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __69___CNVCardParsingConcurrentStrategy_parseData_options_resultFactory___block_invoke;
    v21 = &unk_27A7111C0;
    v22 = dataCopy;
    selfCopy = self;
    v24 = optionsCopy;
    v25 = factoryCopy;
    v15 = [v14 _cn_concurrentMap:&v18];
    _cn_flatten = [v15 _cn_flatten];
  }

  return _cn_flatten;
}

- (id)seriallyParsedData:(id)data options:(id)options resultFactory:(id)factory
{
  factoryCopy = factory;
  optionsCopy = options;
  dataCopy = data;
  v10 = objc_alloc_init(_CNVCardParsingSerialStrategy);
  v11 = [(_CNVCardParsingSerialStrategy *)v10 parseData:dataCopy options:optionsCopy resultFactory:factoryCopy];

  return v11;
}

@end