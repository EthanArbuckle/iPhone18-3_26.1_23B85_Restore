@interface WLSourceDeviceRecordSummary
+ (WLSourceDeviceRecordSummary)summaryWithInfo:(id)info account:(id)account;
+ (id)_numberFormatter;
- (WLSourceDeviceRecordSummary)initWithInfo:(id)info account:(id)account;
@end

@implementation WLSourceDeviceRecordSummary

+ (WLSourceDeviceRecordSummary)summaryWithInfo:(id)info account:(id)account
{
  accountCopy = account;
  infoCopy = info;
  v7 = [[WLSourceDeviceRecordSummary alloc] initWithInfo:infoCopy account:accountCopy];

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

- (WLSourceDeviceRecordSummary)initWithInfo:(id)info account:(id)account
{
  infoCopy = info;
  accountCopy = account;
  v8 = [(WLSourceDeviceRecordSummary *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v10 = [infoCopy objectForKeyedSubscript:@"itemID"];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [infoCopy objectForKeyedSubscript:@"itemSize"];
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

    v15 = [infoCopy objectForKeyedSubscript:@"relativePath"];
    relativePath = v9->_relativePath;
    v9->_relativePath = v15;

    v17 = [infoCopy objectForKeyedSubscript:@"metaData"];
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

    v22 = [infoCopy objectForKeyedSubscript:{@"bucket", v28, v29, v30}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v24 = [v22 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if ([v24 length])
      {
        lowercaseString = [v24 lowercaseString];
        v26 = [lowercaseString isEqualToString:@"camera"];

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