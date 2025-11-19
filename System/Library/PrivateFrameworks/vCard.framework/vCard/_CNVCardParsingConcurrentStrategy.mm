@interface _CNVCardParsingConcurrentStrategy
- (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5;
- (id)seriallyParsedData:(id)a3 options:(id)a4 resultFactory:(id)a5;
@end

@implementation _CNVCardParsingConcurrentStrategy

- (id)parseData:(id)a3 options:(id)a4 resultFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CNVCardRangeFinder allRangesInData:v8];
  v12 = [v11 left];

  v13 = [v12 _cn_balancedSlicesWithMaximumCount:128];
  v14 = [v13 _cn_map:&__block_literal_global_12];

  if ([v14 count] <= 1)
  {
    v16 = [(_CNVCardParsingConcurrentStrategy *)self seriallyParsedData:v8 options:v9 resultFactory:v10];
  }

  else
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __69___CNVCardParsingConcurrentStrategy_parseData_options_resultFactory___block_invoke;
    v21 = &unk_27A7111C0;
    v22 = v8;
    v23 = self;
    v24 = v9;
    v25 = v10;
    v15 = [v14 _cn_concurrentMap:&v18];
    v16 = [v15 _cn_flatten];
  }

  return v16;
}

- (id)seriallyParsedData:(id)a3 options:(id)a4 resultFactory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_CNVCardParsingSerialStrategy);
  v11 = [(_CNVCardParsingSerialStrategy *)v10 parseData:v9 options:v8 resultFactory:v7];

  return v11;
}

@end