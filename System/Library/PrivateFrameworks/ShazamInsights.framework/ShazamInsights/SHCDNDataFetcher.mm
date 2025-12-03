@interface SHCDNDataFetcher
- (SHCDNDataFetcher)init;
- (SHCDNDataFetcher)initWithNetworkRequester:(id)requester;
- (void)clusterDataAtURL:(id)l forLocation:(id)location date:(id)date completionHandler:(id)handler;
@end

@implementation SHCDNDataFetcher

- (SHCDNDataFetcher)init
{
  v3 = objc_opt_new();
  v4 = [(SHCDNDataFetcher *)self initWithNetworkRequester:v3];

  return v4;
}

- (SHCDNDataFetcher)initWithNetworkRequester:(id)requester
{
  requesterCopy = requester;
  v9.receiver = self;
  v9.super_class = SHCDNDataFetcher;
  v6 = [(SHCDNDataFetcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkRequester, requester);
  }

  return v7;
}

- (void)clusterDataAtURL:(id)l forLocation:(id)location date:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v11 = [MEMORY[0x277CCAB70] requestWithURL:l];
  networkRequester = [(SHCDNDataFetcher *)self networkRequester];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SHCDNDataFetcher_clusterDataAtURL_forLocation_date_completionHandler___block_invoke;
  v15[3] = &unk_279BBF0E8;
  v16 = dateCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = dateCopy;
  [networkRequester performRequest:v11 completionHandler:v15];
}

void __72__SHCDNDataFetcher_clusterDataAtURL_forLocation_date_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    v9 = [SHDataFetcherFileInfo alloc];
    v10 = [v8 suggestedFilename];
    v11 = [(SHDataFetcherFileInfo *)v9 initWithData:v7 suggestedFileName:v10];

    [(SHDataFetcherFileInfo *)v11 setCreationDate:*(a1 + 32)];
    v12 = [v8 valueForHTTPHeaderField:@"Etag"];

    [(SHDataFetcherFileInfo *)v11 setUniqueHash:v12];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

@end