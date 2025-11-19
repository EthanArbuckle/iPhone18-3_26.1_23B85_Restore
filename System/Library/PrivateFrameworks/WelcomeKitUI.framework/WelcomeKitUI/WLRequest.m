@interface WLRequest
- (WLRequestDelegate)delegate;
- (void)request:(id)a3 redirect:(BOOL)a4;
- (void)sessionDidFinish:(id)a3 response:(id)a4 error:(id)a5 redirect:(BOOL)a6;
@end

@implementation WLRequest

- (void)request:(id)a3 redirect:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v7 setTLSMinimumSupportedProtocolVersion:771];
  [v7 setTLSMaximumSupportedProtocolVersion:772];
  [v7 setHTTPMaximumConnectionsPerHost:1];
  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v7];
  v9 = MEMORY[0x277CCAD20];
  v10 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  v11 = [v9 requestWithURL:v10 cachePolicy:1 timeoutInterval:10.0];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__WLRequest_request_redirect___block_invoke;
  v13[3] = &unk_279EB8E68;
  objc_copyWeak(&v14, &location);
  v15 = a4;
  v12 = [v8 dataTaskWithRequest:v11 completionHandler:v13];
  [v12 resume];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __30__WLRequest_request_redirect___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WLRequest_request_redirect___block_invoke_2;
  block[3] = &unk_279EB8E40;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v18 = *(a1 + 40);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v17);
}

void __30__WLRequest_request_redirect___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained sessionDidFinish:*(a1 + 32) response:*(a1 + 40) error:*(a1 + 48) redirect:*(a1 + 64)];
}

- (void)sessionDidFinish:(id)a3 response:(id)a4 error:(id)a5 redirect:(BOOL)a6
{
  v6 = a6;
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = v10;
    v16 = [WeakRetained statusCode];
    if (!v6 || (v16 - 301) > 1)
    {
      v14 = (v16 - 200) < 0x64;
      if ((v16 - 200) >= 0x64)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLRequest" code:3 userInfo:0];
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v17 = [WeakRetained allHeaderFields];
    v18 = [v17 objectForKey:@"Location"];
    if ([v18 length])
    {
      [(WLRequest *)self request:v18 redirect:1];

      goto LABEL_12;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLRequest" code:2 userInfo:0];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLRequest" code:1 userInfo:0];
  }

  v14 = 0;
  if (v13)
  {
LABEL_10:
    _WLLog();
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestDidFinish:v14];
LABEL_12:
}

- (WLRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end