@interface SKUIReportAConcernOperation
- (SKUIReportAConcernOperation)initWithMetadata:(id)metadata;
- (id)_httpBody;
- (void)run;
@end

@implementation SKUIReportAConcernOperation

- (SKUIReportAConcernOperation)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = SKUIReportAConcernOperation;
  v6 = [(SKUIReportAConcernOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
  }

  return v7;
}

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x277D7FD48]);
  metadata = [(SKUIReportAConcernOperation *)self metadata];
  reportConcernURL = [metadata reportConcernURL];

  v6 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:reportConcernURL];
  [v6 setAllowedRetryCount:0];
  [v6 setCachePolicy:1];
  _httpBody = [(SKUIReportAConcernOperation *)self _httpBody];
  [v6 setHTTPBody:_httpBody];

  [v6 setHTTPMethod:@"POST"];
  [v3 setRequestProperties:v6];
  provider = [MEMORY[0x277D7FD30] provider];
  [provider setShouldProcessDialogs:0];
  [v3 setDataProvider:provider];
  v14 = 0;
  v9 = [(SKUIReportAConcernOperation *)self runSubOperation:v3 returningError:&v14];
  v10 = v14;
  v11 = 0;
  if (v9)
  {
    output = [provider output];
    v13 = [output objectForKey:@"status-code"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] == 3200;
    [(SKUIReportAConcernOperation *)self setResponseDictionary:output];
  }

  [(SKUIReportAConcernOperation *)self setError:v10];
  [(SKUIReportAConcernOperation *)self setSuccess:v11];
}

- (id)_httpBody
{
  metadata = [(SKUIReportAConcernOperation *)self metadata];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(metadata, "itemIdentifier")];
  [v3 setObject:v4 forKey:@"userReviewId"];

  selectedReason = [metadata selectedReason];
  reasonID = [selectedReason reasonID];

  stringValue = [reasonID stringValue];
  v8 = [stringValue length];

  if (v8)
  {
    [v3 setObject:reasonID forKey:@"selectedReson"];
  }

  details = [metadata details];
  if ([details length])
  {
    [v3 setObject:details forKey:@"explanation"];
  }

  mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
  guid = [mEMORY[0x277D7FCE0] guid];

  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  v12 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v3 escapedValues:1];
  v13 = [v12 dataUsingEncoding:4];

  return v13;
}

@end