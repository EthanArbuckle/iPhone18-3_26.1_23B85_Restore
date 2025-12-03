@interface WLKURLResponseDecoder
+ (void)logNetworkHeaders:(id)headers identifier:(id)identifier;
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation WLKURLResponseDecoder

- (id)resultFromResult:(id)result error:(id *)error
{
  resultCopy = result;
  responseHeaders = [resultCopy responseHeaders];
  v8 = objc_opt_class();
  logUUID = [resultCopy logUUID];
  [v8 logNetworkHeaders:responseHeaders identifier:logUUID];

  v12.receiver = self;
  v12.super_class = WLKURLResponseDecoder;
  v10 = [(AMSURLResponseDecoder *)&v12 resultFromResult:resultCopy error:error];

  return v10;
}

+ (void)logNetworkHeaders:(id)headers identifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  identifierCopy = identifier;
  if (logNetworkHeaders_identifier__onceToken != -1)
  {
    +[WLKURLResponseDecoder logNetworkHeaders:identifier:];
  }

  if (logNetworkHeaders_identifier__isInternalBuild == 1)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__WLKURLResponseDecoder_logNetworkHeaders_identifier___block_invoke_2;
    v11[3] = &unk_279E5F2F8;
    v8 = dictionary;
    v12 = v8;
    [headersCopy enumerateKeysAndObjectsUsingBlock:v11];
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKURLResponseDecoder - id: %@ response headers: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__WLKURLResponseDecoder_logNetworkHeaders_identifier___block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  logNetworkHeaders_identifier__isInternalBuild = os_variant_has_internal_content();
  v3[0] = @"x-apple-response-time";
  v3[1] = @"x-apple-jingle-correlation-key";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = logNetworkHeaders_identifier__headersToLog;
  logNetworkHeaders_identifier__headersToLog = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __54__WLKURLResponseDecoder_logNetworkHeaders_identifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 lowercaseString];
  if ([logNetworkHeaders_identifier__headersToLog containsObject:v6])
  {
    [*(a1 + 32) setObject:v5 forKey:v7];
  }
}

@end