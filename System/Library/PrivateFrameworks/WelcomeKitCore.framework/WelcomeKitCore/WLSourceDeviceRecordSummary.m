@interface WLSourceDeviceRecordSummary
+ (WLSourceDeviceRecordSummary)summaryWithInfo:(id)a3 account:(id)a4;
+ (id)_numberFormatter;
- (WLSourceDeviceRecordSummary)initWithInfo:(id)a3 account:(id)a4;
@end

@implementation WLSourceDeviceRecordSummary

+ (WLSourceDeviceRecordSummary)summaryWithInfo:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WLSourceDeviceRecordSummary alloc] initWithInfo:v6 account:v5];

  return v7;
}

+ (id)_numberFormatter
{
  if (_numberFormatter_onceToken != -1)
  {
    +[WLSourceDeviceRecordSummary _numberFormatter];
  }

  v3 = _numberFormatter_numberFormatter;

  return v3;
}

uint64_t __47__WLSourceDeviceRecordSummary__numberFormatter__block_invoke()
{
  _numberFormatter_numberFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);

  return MEMORY[0x2821F96F8]();
}

- (WLSourceDeviceRecordSummary)initWithInfo:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WLSourceDeviceRecordSummary *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, a4);
    v10 = [v6 objectForKeyedSubscript:@"itemID"];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v6 objectForKeyedSubscript:@"itemSize"];
    if (v12)
    {
      v13 = +[WLSourceDeviceRecordSummary _numberFormatter];
      v14 = [v13 numberFromString:v12];
      v9->_itemSize = [v14 unsignedIntegerValue];
    }

    else
    {
      v9->_itemSize = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"relativePath"];
    relativePath = v9->_relativePath;
    v9->_relativePath = v15;

    v17 = [v6 objectForKeyedSubscript:@"metaData"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length])
    {
      v18 = [v17 dataUsingEncoding:4];
      v31 = 0;
      v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:&v31];
      v20 = v31;
      metadata = v9->_metadata;
      v9->_metadata = v19;

      if (v20)
      {
        v29 = v17;
        v30 = v20;
        v28 = v9;
        _WLLog();
      }
    }

    v22 = [v6 objectForKeyedSubscript:{@"bucket", v28, v29, v30}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v24 = [v22 stringByTrimmingCharactersInSet:v23];

      if ([v24 length])
      {
        v25 = [v24 lowercaseString];
        v26 = [v25 isEqualToString:@"camera"];

        if ((v26 & 1) == 0)
        {
          [(WLSourceDeviceRecordSummary *)v9 setBucket:v22];
        }
      }
    }
  }

  return v9;
}

@end