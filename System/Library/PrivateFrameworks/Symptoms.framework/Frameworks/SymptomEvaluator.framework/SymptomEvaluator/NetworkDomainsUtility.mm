@interface NetworkDomainsUtility
+ (BOOL)isValidDomain:(id)a3;
@end

@implementation NetworkDomainsUtility

+ (BOOL)isValidDomain:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (isValidDomain__onceToken != -1)
  {
    +[NetworkDomainsUtility isValidDomain:];
  }

  v4 = isValidDomain__domainRegex;
  if (isValidDomain__domainRegex)
  {
    v5 = [isValidDomain__domainRegex numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v6 = domainTrackingLogHandle;
    if (v5 == 1)
    {
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138477827;
        v10 = v3;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "(%{private}@) is a valid domain", &v9, 0xCu);
      }

      v4 = 1;
    }

    else
    {
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138477827;
        v10 = v3;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "(%{private}@) is not a valid domain", &v9, 0xCu);
      }

      v4 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void __39__NetworkDomainsUtility_isValidDomain___block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^(?=.{4 options:255}$)([a-zA-Z0-9]([a-zA-Z0-9-]{0 error:{61}[a-zA-Z0-9])?\\.){1, 126}[a-zA-Z0-9][a-zA-Z0-9-]{0, 61}[a-zA-Z]$", 0, &v5}];
  v1 = v5;
  v2 = isValidDomain__domainRegex;
  isValidDomain__domainRegex = v0;

  if (!isValidDomain__domainRegex)
  {
    v3 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v7 = @"^(?=.{4,255}$)([a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?\\.){1,126}[a-zA-Z0-9][a-zA-Z0-9-]{0,61}[a-zA-Z]$";
      v8 = 2112;
      v9 = v1;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Failed to create domain regex with pattern %@, error: %@", buf, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end